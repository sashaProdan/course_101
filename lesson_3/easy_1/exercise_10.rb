
flintstones = ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]

hash = {}
flintstones.each_with_index do |name, index|
  hash[name] = index
end

p hash   # => {"Fred"=>0, "Wilma"=>1, "Barney"=>2, "Betty"=>3, "BamBam"=>4, "Pebbles"=>5}
