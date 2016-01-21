
munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" } 
}

male_age = 0

munsters.each do |name, details|
  male_age += details['age'] if details['gender'] == 'male'
end

p male_age     # => 444
