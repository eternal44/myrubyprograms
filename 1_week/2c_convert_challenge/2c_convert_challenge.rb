# Description:  temperature conversion script

require_relative "temperature_conversions"

class ConvertTemperature
  include TemperatureConversions

  def initialize(conversion_to_make, value)
    @value = value
    @conversion_to_make = conversion_to_make
  end

  def show_conversion
    original_temperature = @value

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
    converted_temperature = @conversion_to_make
    # change to sprintf format
    "#{original_temperature} degrees #{original_unit} | " \
    "#{converted_temperature} degrees #{converted_unit}"
  end

end

# add library guard with only two floats:
# "#{format("%.2f", converted_value)} degrees."
# # >> conversion_to_make = "tiger"
# # >> value = 32
# # >> convert_temperature(conversion_to_make, value)
# # => "Sorry please try entering a valid selection."

