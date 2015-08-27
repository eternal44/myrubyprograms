def even_or_odd(array)
  array.each do |number|
    output = number.even? ? 'even' : 'odd'
    puts "#{number} is #{output}"
  end
end

if __FILE__ == $PROGRAM_NAME
  array = [12, 23, 456, 123, 4579]
  even_or_odd(array)
end
