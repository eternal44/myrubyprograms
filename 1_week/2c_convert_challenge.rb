# doctest: convert should give correct results
# >> conversion_to_make = 1
# >> value = 0
# >> convert_temperature(conversion_to_make, value)
# => "32.0 degrees."
# >> conversion_to_make = 2
# >> value = 32
# >> convert_temperature(conversion_to_make, value)
# => "0.0 degrees."
# >> conversion_to_make = 3
# >> value = 0
# >> convert_temperature(conversion_to_make, value)
# => "273.15 degrees."
# >> conversion_to_make = 4
# >> value = 273.15
# >> convert_temperature(conversion_to_make, value)
# => "0.0 degrees."
# >> conversion_to_make = 5
# >> value = 32
# >> convert_temperature(conversion_to_make, value)
# => "0.0 degrees."


def convert_temperature(conversion_to_make, value)
  exit if value.is_a?(Numeric) == false
  exit if conversion_to_make.is_a?(Integer) == false

  case conversion_to_make
  when 1 # Celcius to Fahrenheit
    converted_value = value * 5/9.to_f + 32
  when 2 # Fahrenheit to Celcius
    converted_value = (value - 32) * (5 / 9.to_f)
    f_to_c = converted_value
  when 3 # Celcius to Kelvin
    converted_value = value + 273.15
  when 4 # Kelvin to Celcius
    converted_value = value - 273.15
  when 5 # Fahrenheit to Kelvin 
    converted_value = value - 273.15
  else
    puts "Sorry please try entering a valid selection."
    exit
  end

  "#{converted_value} degrees." # refactor this later
end

# add library guard with only two floats:
# "#{format("%.2f", converted_value)} degrees."
# # >> conversion_to_make = "tiger"
# # >> value = 32
# # >> convert_temperature(conversion_to_make, value)
# # => "Sorry please try entering a valid selection."

