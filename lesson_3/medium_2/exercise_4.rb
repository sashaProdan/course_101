
sentence = 'Humpty Dumpty sat on a wall'

new_sentence = sentence.split(' ').reverse!.join(' ')
p new_sentence    # => "wall a on sat Dumpty Humpty"
