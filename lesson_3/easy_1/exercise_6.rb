
famous_words = 'seven years ago...'

'Four score and '.concat(famous_words)     #
famous_words.prepend('Four score and ')    #   => 'Four score and seven years ago...'
'Four score and ' << famous_words          #
'Four score and ' + famous_words           #