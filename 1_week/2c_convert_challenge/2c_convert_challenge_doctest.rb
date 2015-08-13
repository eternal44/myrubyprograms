require_relative "2c_convert_challenge"

# doctest: c to f should give correct results
# >> a = ConvertTemperature.new(1, 0)
# >> a.show_conversion
# => "0.00 degrees Celcius | 32.00 degrees Fahrenheit"
# >> a.celcius_to_fahrenheit(0)
# => 32.0
# doctest: c to k should give correct result
# >> c = ConvertTemperature.new(2, 0)
# >> c.show_conversion
# => "0.00 degrees Celcius | 273.15 degrees Kelvin"
# >> c.celcius_to_kelvin(0)
# => 273.15
# doctest: f to c should give correct result
# >> b = ConvertTemperature.new(3, 32)
# >> b.show_conversion
# => "32.00 degrees Fahrenheit | 0.00 degrees Celcius"
# >> b.fahrenheit_to_celcius(32)
# => 0.0
# doctest: f to k should give correct result
# >> d = ConvertTemperature.new(4, 32)
# >> d.show_conversion
# => "32.00 degrees Fahrenheit | 273.15 degrees Kelvin"
# >> d.fahrenheit_to_kelvin(32)
# => 273.15
# doctest: k to c should give correct result
# >> e = ConvertTemperature.new(5, 273.15)
# >> e.show_conversion
# => "273.15 degrees Kelvin | 0.00 degrees Celcius"
# >> e.kelvin_to_celcius(273.15)
# => 0
# doctest: k to f should give correct result
# >> f = ConvertTemperature.new(6, 273.15)
# >> f.show_conversion
# => "273.15 degrees Kelvin | 32.00 degrees Fahrenheit"
# >> f.kelvin_to_fahrenheit(273.15)
# => 32
