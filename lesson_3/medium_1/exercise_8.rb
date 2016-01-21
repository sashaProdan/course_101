
def titleize(string)
  string.split(' ')
        .each { |w| w.capitalize! }
        .join(' ')
end

puts titleize('this cake is so far my favorite')
