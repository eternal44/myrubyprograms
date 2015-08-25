100.times do |number|
  fizz = number % 3 == 0 ? "fizz" : nil
  buzz = number % 5 == 0 ? "buzz" : nil
  puts fizz || buzz ? "#{fizz}#{buzz}" : number
end

