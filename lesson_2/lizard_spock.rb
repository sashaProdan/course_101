OUTPUT_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'ss' => 'scissors',
  'l' => 'lizard',
  'sk' => 'spock'
}
VALID_CHOICES = OUTPUT_CHOICES.keys
def prompt(message)
  puts ("=> #{message}")
end

def win?(first, second)
  (first == 'r' && second == 'ss') ||
  (first == 'p' && second == 'r') ||
  (first == 'ss' && second == 'p') ||
  (first == 'r' && second == 'l') ||
  (first == 'l'&& second == 'sk') ||
  (first == 'sk' && second == 'ss') ||
  (first == 'ss' && second == 'l') ||
  (first == 'l' && second == 'p') ||
  (first == 'p' && second == 'sk') ||
  (first == 'sk' && second == 'r')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
  prompt("It's a tie!")
  end
end

loop do
  choice = ''
    
  loop do
  prompt("Choose one: #{OUTPUT_CHOICES.values.join(', ')}")
  prompt("Type in first letter for rock, paper and lizard, 'ss' for scissors and 'sk' for spock!")
  choice = gets.chomp

  if VALID_CHOICES.include?(choice)
    break
  else
    prompt("That's not a valid choice.")
  end
  end

  computer_choice = VALID_CHOICES.sample

  puts("You chose: #{OUTPUT_CHOICES[choice]}; Computer chose: #{OUTPUT_CHOICES[computer_choice]}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again? If YES - press 'y', if NO - press any other key!")  
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing!Good bye!')
