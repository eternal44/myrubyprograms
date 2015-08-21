module TemperatureConversions
  def celcius_to_fahrenheit(value)
    value_holder = celcius_to_kelvin(value)
    kelvin_to_fahrenheit(value_holder)
  end

  def fahrenheit_to_celcius(value)
    value_holder = fahrenheit_to_kelvin(value)
    kelvin_to_celcius(value_holder)
  end

  def celcius_to_kelvin(value)
    value + 273.15
  end

  def fahrenheit_to_kelvin(value)
    (value + 459.67) * 5 / 9
  end

  def kelvin_to_celcius(value)
    value - 273.15
  end

  def kelvin_to_fahrenheit(value)
    (value * 9 / 5.0) - 459.67
  end

  def kelvin_to_rankine(value)
    value * 1.8
  end

  def rankine_to_kelvin(value)
    value / 1.8
  end

  def rankine_to_celcius(value)
    value_holder = rankine_to_kelvin(value)
    kelvin_to_celcius(value_holder)
  end

  def rankine_to_fahrenheit(value)
    value_holder = rankine_to_kelvin(value)
    kelvin_to_fahrenheit(value_holder)
  end

  def celcius_to_rankine(value)
    value_holder = celcius_to_kelvin(value)
    kelvin_to_rankine(value_holder)
  end

  def fahrenheit_to_rankine(value)
    value_holder = fahrenheit_to_kelvin(value)
    kelvin_to_rankine(value_holder)
  end

end
