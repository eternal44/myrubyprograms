# doctest: c to f should give correct results
# >> a = ConvertTemperature.new(1, 0)
# >> a.celcius_to_fahrenheit
# => 32.0
# doctest: f to c should give correct result
# >> b = ConvertTemperature.new(2, 32)
# >> b.fahrenheit_to_celcius
# => 0.0
# doctest: c to k should give correct result
# >> c = ConvertTemperature.new(3, 0)
# >> c.celcius_to_kelvin
# => 273.15
# doctest: f to k should give correct result
# >> d = ConvertTemperature.new(4, 32)
# >> d.fahrenheit_to_kelvin
# => 273.15
# doctest: k to c should give correct result
# >> e = ConvertTemperature.new(5, 273.15)
# >> e.kelvin_to_celcius
# => 0
# doctest: k to f should give correct result
# >> f = ConvertTemperature.new(6, 273.15)
# >> f.kelvin_to_fahrenheit
# => 32


class ConvertTemperature
  def initialize(converion_to_make, value)
    @value = value
  end

  def celcius_to_fahrenheit
    @value * 5 / 9.0 + 32
  end

  def fahrenheit_to_celcius
    @value = (@value - 32) * (5 / 9.0)
  end

  def celcius_to_kelvin
    @value += 273.15
  end

  def fahrenheit_to_kelvin
    fahrenheit_to_celcius
    celcius_to_kelvin
  end

  def kelvin_to_celcius
    @value -= 273.15
  end

  def kelvin_to_fahrenheit
    kelvin_to_celcius
    celcius_to_fahrenheit
  end
end

# add library guard with only two floats:
# "#{format("%.2f", converted_value)} degrees."
# # >> conversion_to_make = "tiger"
# # >> value = 32
# # >> convert_temperature(conversion_to_make, value)
# # => "Sorry please try entering a valid selection."

