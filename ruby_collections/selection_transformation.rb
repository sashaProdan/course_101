# Selection from Hash

produce_list = {
  'apple'    => 'Fruit',
  'carrot'   => 'Vegetable',
  'pear'     => 'Fruit',
  'brocolli' => 'Vegetable'
}

def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  select_fruits = {}
  
  loop do
    break if counter == produce_keys.size

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == 'Fruit'
      select_fruits[current_key] = current_value
    end

    counter += 1
  end

  select_fruits
end

# Transformation (array)

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter +=1
  end

  doubled_numbers
end

#...........................

def doubled_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size
    numbers[counter] *= 2

    counter += 1
  end
  numbers
end

# Transformation with condition

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size
    
    current_number = numbers[counter]
    doubled_numbers << current_number * 2 if counter.odd?

    counter += 1
  end

  doubled_numbers
end

#...........................

def multiply(array, specific_value)
  multiplied_values = []
  counter = 0

  loop do 
    break if counter == array.size

    current_value = array[counter]
    multiplied_values << current_value * specific_value

    counter += 1
  end

  multiplied_values
end


