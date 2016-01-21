
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |word|
  word[0, 3]
end

p flintstones    # => ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]
