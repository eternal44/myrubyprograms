# def fizz_buzz(number, rules = { 3 => 'Fizz', 5 => 'Buzz'}, fizz: 3, buzz: 5, **user_rules)
# end
#
# list_of_num  # Who is responsible for list of numbers?  In the programming context...
#
# class / method
#
# result

# doctest: fizz_buzz 1 returns 1
# >> fizz_buzz(1)
# => "1"
# doctest: fizz_buzz 3 returns 'Fizz'
# >> fizz_buzz(3)
# => "Fizz"
# doctest: fizz_buzz 5 returns 'Buzz'
# >> fizz_buzz(5)
# => "Buzz"
# doctest: fizz_buzz 15 returns 'FizzBuzz'
# >> fizz_buzz(15)
# => "FizzBuzz"
# doctest: fizz_buzz custom rules for fizz with 2
# >> fizz_buzz(2, fizz: 2)
# => "Fizz"
# doctest: fizz_buzz custom rules for fizz with 2 given 10
# >> fizz_buzz(10, fizz: 2)
# => "FizzBuzz"
# doctest: fizz_buzz custom rules for other_rules
# >> fizz_buzz(7, dazz: 7)
# => "Dazz"

def fizz_buzz(num, number: num, fizz: 3, buzz: 5, **other_rules)
  rules = {fizz: fizz, buzz: buzz}.merge(other_rules)
    result = ""
    rules.each_value do |v|
      result << "#{rules.key(v).to_s.capitalize}" if number % v == 0
    end
    result.empty? ? num.to_s : result
end

if __FILE__ == $PROGRAM_NAME
  -15.upto(15) do |num|
  puts fizz_buzz(num, boogy: 4)
  end
end
__END__

# method documention how do you suply the optional rules, what are the
# expectatoins to make it work.
#
fizz_buzz(1 fizz: 3, buzz: 5, **option_rules )
