def fizz_buzz(start, finish)
  (start..finish).reduce("") do |b, number|
    fizz = number % 3 == 0 ? 'fizz' : nil
    buzz = number % 5 == 0 ? 'buzz' : nil
    b + "#{fizz || buzz ? "#{fizz}#{buzz}" : number.to_s}" + "\n"
  end
end

if __FILE__ == $PROGRAM_NAME
  puts fizz_buzz(-10, 10)
end

