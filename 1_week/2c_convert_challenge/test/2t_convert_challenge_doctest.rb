require_relative "../lib/2c_convert_challenge"

# doctest:Unit & Integration tests below this line
#         c to f
# >> a = ConvertTemperature.new(1, -40)
# >> a.show_conversion
# => "-40.00 degrees Celcius | -40.00 degrees Fahrenheit"
# >> a.celcius_to_fahrenheit(-40)
# => -40.00000000000006
# doctest: c to k
# >> c = ConvertTemperature.new(2, 0)
# >> c.show_conversion
# => "0.00 degrees Celcius | 273.15 degrees Kelvin"
# >> c.celcius_to_kelvin(0)
# => 273.15
# doctest: f to c
# >> b = ConvertTemperature.new(3, 32)
# >> b.show_conversion
# => "32.00 degrees Fahrenheit | 0.00 degrees Celcius"
# >> b.fahrenheit_to_celcius(32)
# => 0.0
# doctest: f to k
# >> d = ConvertTemperature.new(4, 32)
# >> d.show_conversion
# => "32.00 degrees Fahrenheit | 273.15 degrees Kelvin"
# >> d.fahrenheit_to_kelvin(32)
# => 273.15
# doctest: k to c
# >> e = ConvertTemperature.new(5, 273.15)
# >> e.show_conversion
# => "273.15 degrees Kelvin | 0.00 degrees Celcius"
# >> e.kelvin_to_celcius(273.15)
# => 0
# doctest: k to f
# >> f = ConvertTemperature.new(6, 273.15)
# >> f.show_conversion
# => "273.15 degrees Kelvin | 32.00 degrees Fahrenheit"
# >> f.kelvin_to_fahrenheit(273.15)
# => 31.999999999999943
# doctest: Only unit tests below this line:
#          k to r
# >> g = ConvertTemperature.new(7, 0)
# >> g.kelvin_to_rankine(0)
# => 0.0
# doctest: r to k
# >> h = ConvertTemperature.new(8, 1)
# >> h.rankine_to_kelvin(1)
# => 0.5555555555555556
# doctest: r to c
# >> i = ConvertTemperature.new(9, 1)
# >> i.rankine_to_celcius(1)
# => -272.59444444444443
# doctest: r to f
# >> j = ConvertTemperature.new(10, 1)
# >> j.rankine_to_fahrenheit(1)
# => -458.67
# doctest: c to r
# >> k = ConvertTemperature.new(11, -272.594)
# >> k.celcius_to_rankine(-272.594)
# => 1.0007999999999697
# doctest: f to r
# >> l = ConvertTemperature.new(12, -458.67)
# >> l.fahrenheit_to_rankine(-458.67)
# => 1
