# doctest: gets even
# >> even_or_odd(3)
# => "3 is odd"
def even_or_odd(number)
  output = number.even? ? 'even' : 'odd'
  "#{number} is #{output}"
end

if __FILE__ == $PROGRAM_NAME
  array = [12, 23, 456, 123, 4579]
  array.each do |num|
    puts even_or_odd(num)
  end
end
