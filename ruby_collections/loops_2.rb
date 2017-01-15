# # Even or Odd?

count = 1

loop do
  break if count > 5
  puts "#{count} is odd!" if count.odd?
  puts "#{count} is even!" if count.even?
  count += 1
end

# Catch the number

loop do
  number = rand(100)
  break if (0..10).include? number
  puts number
end

# Conditional Loop

process_the_loop = [true, false].sample

loop do
  if process_the_loop
    puts "The loop was processed!"
  elsif process_the_loop == false
    puts "The loop wasn't processed!"
  end

  break
end

# Get the Sum

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct!"
    break
  end

  puts "Wrong answer.Try again!"
end

# Insert Numbers

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input

  break if numbers.size == 5
end

puts numbers

# Empty the Array

names = ['Sally', 'Joe', 'Lisa', 'Henry']
counter = names.size

loop do
  break if names.empty?
  puts names.delete_at(counter)
end

# Stop Counting

5.times do |index|
  puts index
  break if index == 2
end

# Only Even

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# First to Five

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)

  if number_a < 5 || number_b < 5
    next
  elsif number_a == 5 || number_b == 5
    puts "5 was reached!"
    break
  end
end

# Greeting

def greeting
  puts 'Hello!'
end

number_of_greetings = 2
counter  = 0

while counter < number_of_greetings
  greeting
  counter += 1
end
