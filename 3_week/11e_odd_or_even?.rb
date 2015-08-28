# doctest: gets even
# >> even_or_odd(3)
# => 'odd'
def even_or_odd(number)
  number.even? ? 'even' : 'odd'
end

if __FILE__ == $PROGRAM_NAME
  array = [12, 23, 456, 123, 4579]
  array.each do |num|
    puts "#{num} is #{even_or_odd(num)}"
  end
end
