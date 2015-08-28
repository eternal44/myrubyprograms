# doctest: fizz_buzz 1 returns 1
# >> fizz_buzz(1)
# => "1"
# doctest: fizz_buzz 3 returns 'Fizz'
# >> fizz_buzz(3, fizz: 3)
# => "Fizz"
# doctest: fizz_buzz 5 returns 'Buzz'
# >> fizz_buzz(5, buzz: 5)
# => "Buzz"
# doctest: fizz_buzz 15 returns 'FizzBuzz'
# >> fizz_buzz(15, fizz: 3, buzz: 5)
# => "FizzBuzz"
# doctest: fizz_buzz custom rules for fizz with 2
# >> fizz_buzz(2, fizz: 2)
# => "Fizz"
# doctest: fizz_buzz custom rules for fizz with 2 given 10
# >> fizz_buzz(10, fizz: 2, buzz: 5)
# => "FizzBuzz"
# doctest: fizz_buzz custom rules for other_rules
# >> fizz_buzz(7, dazz: 7)
# => "Dazz"

# pass 2 arguments:
# 1st arguement:  a number to test
# 2nd argument:  a hash with a key variable that sets the word
#                output and a value to divide the number (1st
#                argument) by

def fizz_buzz(num, **rules)
  result = ""
  rules.each_key do |k|
    result << "#{k.to_s.capitalize}" if num % rules.fetch(k) == 0
  end
  result.empty? ? num.to_s : result
end

if __FILE__ == $PROGRAM_NAME
  -15.upto(15) do |num|
    puts fizz_buzz(num, boogy: 4, negy: -7)
  end
end

# fizz_buzz(1 fizz: 3, buzz: 5, **option_rules )
