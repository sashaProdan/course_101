
statement = 'The Flintstones Rock!'

hash = {}

letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_occurence = statement.scan(letter).count
  hash[letter] = letter_occurence if letter_occurence > 0
end

p hash  

# => {"F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, "h"=>1, "i"=>1, "k"=>1, "l"=>1, "n"=>2, "o"=>2, "s"=>2, "t"=>2}
