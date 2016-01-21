
ages = { 'Herman' => 32, 'Lily' => 30, 'Grandpa' => 402, 'Eddie' => 10}

p ages.has_key? 'Spot'    # => false
p ages.key? 'Donna'       # => false
p ages.include? 'Max'     # => false
p ages.member? 'Spot'     # => false
