# doctest: get 'Fizz' for 3
# >> fizz_buzz(3)
# => "Fizz"
# doctest: get 'Buzz' for 5
# >> fizz_buzz(5)
# => "Buzz"
# doctest: get 'FizzBuzz' for 15
# >> fizz_buzz(15)
# => "FizzBuzz"
# doctest: get number if 4
# >> fizz_buzz(4)
# => "4"
#
def fizz_buzz(number)
  result = ''
  result << 'Fizz' if number % 3 == 0
  result << 'Buzz' if number % 5 == 0
  result.empty? ? number.to_s : result
end

if __FILE__ == $PROGRAM_NAME
  (-10..10).each do |num|
    puts fizz_buzz(num)
  end
end

