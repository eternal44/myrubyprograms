# doctest: get 'Fizz' for 3
# >> fizz_buzz(3)
# => "Fizz"
# doctest: get 'Buzz' for 5
# >> fizz_buzz(5)
# => "Buzz"
# doctest: get 'FizzBuzz' for 15
# >> fizz_buzz(15)
# => "FizzBuzz"
#
def fizz_buzz(number)
  fizz = number % 3 == 0 ? 'Fizz' : ''
  buzz = number % 5 == 0 ? 'Buzz' : ''
  "#{fizz}" "#{buzz}" || number.to_s
end

if __FILE__ == $PROGRAM_NAME
  (-10..10).each do |num|
    puts fizz_buzz(num)
  end
end

