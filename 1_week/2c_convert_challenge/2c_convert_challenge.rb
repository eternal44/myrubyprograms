# Description:  temperature conversion script
puts "Loading temperature_conversions"
require_relative "temperature_conversions"

class ConvertTemperature
  include TemperatureConversions

  def initialize(conversion_to_make, value)
    @conversion_to_make = conversion_to_make
    @value = value
  end

  def show_conversion
    original_temperature = @value

    # handles user input
    case @conversion_to_make
    when 1
      @conversion_to_make = celcius_to_fahrenheit(@value)
      original_unit = "Celcius"
      converted_unit = "Fahrenheit"
    when 2
      @conversion_to_make = celcius_to_kelvin(@value)
      original_unit = "Celcius"
      converted_unit = "Kelvin"
    when 3
      @conversion_to_make = fahrenheit_to_celcius(@value)
      original_unit = "Fahrenheit"
      converted_unit = "Celcius"
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

    # return output to user
    converted_temperature = @conversion_to_make

    formatting = "%<orig_temp>.2f %<degrees>s %<orig_unit>s"\
                 "%<bar>s %<conv_temp>.2f %<degrees>s %<conv_unit>s"

    string_parts = {
      orig_temp: original_temperature,
      degrees: "degrees",
      orig_unit: original_unit,
      bar: " |",
      conv_temp: converted_temperature,
      conv_unit: converted_unit
    }

    return formatting % string_parts
  end
end

# Library guard
if __FILE__ == $PROGRAM_NAME
end

