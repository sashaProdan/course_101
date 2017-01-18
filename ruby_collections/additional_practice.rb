# Turn this array into a hash where the names are the keys and the values
# are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end



# Add up allof the ages from the Munster family hash

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.reduce(:+)   # =>   6174

sum = 0

ages.each do |_, age|
  sum += age
end

p sum   # =>   6174



# Throw out the really old people (age 100 or older)

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.select { |_, age| age < 100 }

ages.keep_if { |_, age| age  < 100 }



# Pick out the minimum age from our Munster family

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.sort_by do |_, age|
  age
end.first

ages.values.min



# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |name| name.start_with?('Be') }

flintstones.index { |name| name[0, 2] == 'Be' }



# Amend this array so that the names are all shortened to just first three characters

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0, 3] }



# Create a hash that expresses the frequency with which each letter occurs in this string

statement = "The Flintstones Rock"


result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end



# There is a method in Rails called `titleize!` which creates a string that has
# each word capitalized as it would be in a title. Write your own version of
# `titleize` method.

def titleize(string)
  if string.empty? || string == ' '
    "This is an empty string!" 
  else
    string.split.map { |word| word.capitalize }.join(' ')
  end
end



# Modify the hash such that each member of the Munster family has an additional
# 'age_group' key that has one of three values describing the age group the family
# memeber is in (kid, adult, or senior)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |_, bio|
  case bio['age']
  when 0..17
    bio['age_group'] = 'kid'
  when 18..64
    bio['age_group'] = 'adult'
  else
    bio['age_group'] = 'senior'
  end
end



# Figure out the total age of just the male members of the family

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0
munsters.each do |_, bio|
  total_age += bio["age"] if bio["gender"] == "male"
end

total_age #  =>  444



# Print out the name, age and gender of each family member

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, bio|
  puts "#{name} is a #{bio["age"]} year old #{bio["gender"]}."
end
