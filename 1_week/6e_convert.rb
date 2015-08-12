# The assignment is to create a method named convert that converts
# a value given as F to Celcius
# doctest: convert method takes a number and converts it to Celcius
# >> convert(-40)
# => -40
# doctest: convert boiling point
# >> convert(212)
# => 100
# doctest: convert freezing point
# >> convert(32)
# => 0
# doctest: convert body temperature
# >> convert(98.6)
# => 37
# doctest: convert 98
# >> to_celcius(98).round(4)
# => 36.6667

# This method converts Celcius to Fahrenheit.
def convert(_F_temp)
  _Celcius = (_F_temp - 32.0) * 5 / 9
end
alias to_celcius convert

# This is called the Library Guard
if __FILE__  == $PROGRAM_NAME
  [-40, 0, 32, 98, 98.6, 100, 212].each do |_F|
    puts("%.2f in F degrees in celcius is %.2f." % [to_celcius(_F), _F])
  end
end

