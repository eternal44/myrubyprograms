# doctest: test pass
# >> lines = 'Hello where are you?'
# >> reverse_word_order(lines)
# => 'you? are where Hello'

def reverse_word_order(lines)
  lines.split(' ').reverse.join(' ')
end
