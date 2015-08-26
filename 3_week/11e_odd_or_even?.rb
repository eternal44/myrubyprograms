def even_or_odd(array)
  array.each do |number|
    even = number.even? ? 'even' : nil
    odd = number.odd? ? 'odd' : nil
    puts "#{number} is #{even || odd}"
  end
end

if __FILE__ == $PROGRAM_NAME
  array = [12, 23, 456, 123, 4579]
  even_or_odd(array)
end
