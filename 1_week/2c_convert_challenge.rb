# doctest: c to f should give correct results
# >> a = ConvertTemperature.new(1, 0)
# >> a.sort
# => "0 degrees Celcius | 32.0 degrees Fahrenheit"
# >> a.celcius_to_fahrenheit(0)
# => 32.0
# doctest: f to c should give correct result
# >> b = ConvertTemperature.new(2, 32)
# >> b.sort
# => "32 degrees Fahrenheit | 0.0 degrees Celcius"
# >> b.fahrenheit_to_celcius(32)
# => 0.0
# doctest: c to k should give correct result
# >> c = ConvertTemperature.new(3, 0)
# >> c.sort
# => "0 degrees Celcius | 273.15 degrees Kelvin"
# >> c.celcius_to_kelvin(0)
# => 273.15
# doctest: f to k should give correct result
# >> d = ConvertTemperature.new(4, 32)
# >> d.sort
# => "32 degrees Fahrenheit | 273.15 degrees Kelvin"
# >> d.fahrenheit_to_kelvin(32)
# => 273.15
# doctest: k to c should give correct result
# >> e = ConvertTemperature.new(5, 273.15)
# >> e.sort
# => "273.15 degrees Kelvin | 0.0 degrees Celcius"
# >> e.kelvin_to_celcius(273.15)
# => 0
# doctest: k to f should give correct result
# >> f = ConvertTemperature.new(6, 273.15)
# >> f.sort
# => "273.15 degrees Kelvin | 32.0 degrees Fahrenheit"
# >> f.kelvin_to_fahrenheit(273.15)
# => 32


class ConvertTemperature
  def initialize(conversion_to_make, value)
    @value = value
    @conversion_to_make = conversion_to_make
  end

  def sort
    case @conversion_to_make
    when 1
      @conversion_to_make = celcius_to_fahrenheit(@value)
      original_unit = "Celcius"
      converted_unit = "Fahrenheit"
    when 2
      @conversion_to_make = fahrenheit_to_celcius(@value)
      original_unit = "Fahrenheit"
      converted_unit = "Celcius"
    when 3
      @conversion_to_make = celcius_to_kelvin(@value)
      original_unit = "Celcius"
      converted_unit = "Kelvin"
    when 4
      @conversion_to_make = fahrenheit_to_kelvin(@value)
      original_unit = "Fahrenheit"
      converted_unit = "Kelvin"
    when 5
      @conversion_to_make = kelvin_to_celcius(@value)
      original_unit = "Kelvin"
      converted_unit = "Celcius"
    when 6
      @conversion_to_make = kelvin_to_fahrenheit(@value)
      original_unit = "Kelvin"
      converted_unit = "Fahrenheit"
    end
    # original_temperature is for stacked unit conversions (ex: k to f)
    original_temperature = @original_temperature #why doesn't this work?
    converted_temperature = @conversion_to_make
    # change to sprintf format
    "#{original_temperature} degrees #{original_unit} | " \
    "#{converted_temperature} degrees #{converted_unit}"
  end

  def celcius_to_fahrenheit(value)
    @original_temperature = value # for stacked unit conversions (ex: k to f)
    value * 5 / 9.0 + 32
  end

  def fahrenheit_to_celcius(value)
    @original_temperature = value # for stacked unit conversions (ex: k to f)
    (value - 32) * (5 / 9.0)
  end

  def celcius_to_kelvin(value)
    @original_temperature = value # for stacked unit conversions (ex: k to f)
    value + 273.15
  end

  def fahrenheit_to_kelvin(value)
    @original_temperature = value #why won't this value go to the sort method?
    @value = fahrenheit_to_celcius(@value)
    celcius_to_kelvin(@value)
  end

  def kelvin_to_celcius(value)
    @original_temperature = value # for stacked unit conversions (ex: k to f)
    value - 273.15
  end

  def kelvin_to_fahrenheit(value)
    @original_temperature = value # for stacked unit conversions (ex: k to f)
    @value = kelvin_to_celcius(@value)
    celcius_to_fahrenheit(@value)
  end
end

# add library guard with only two floats:
# "#{format("%.2f", converted_value)} degrees."
# # >> conversion_to_make = "tiger"
# # >> value = 32
# # >> convert_temperature(conversion_to_make, value)
# # => "Sorry please try entering a valid selection."

