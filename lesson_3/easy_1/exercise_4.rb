
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)  # => 2, numbers = [1, 3, 4, 5]
numbers.delete(1)     # => 1, numbers = [2, 3, 4, 5]


words = ['one', 'two', 'tree']

words.delete_at(1)   # => 'two', words = ['one', 'three']
words.delete('one')  # => 'one', words = ['two', 'three']
