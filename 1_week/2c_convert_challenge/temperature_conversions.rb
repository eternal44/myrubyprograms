module TemperatureConversions
  def celcius_to_fahrenheit(value)
    value * 5 / 9.0 + 32
  end

  def fahrenheit_to_celcius(value)
    (value - 32) * (5 / 9.0)
  end

  def celcius_to_kelvin(value)
    value + 273.15
  end

  def fahrenheit_to_kelvin(value)
    value_holder = fahrenheit_to_celcius(value)
    celcius_to_kelvin(value_holder)
  end

  def kelvin_to_celcius(value)
    value - 273.15
  end

  def kelvin_to_fahrenheit(value)
    value_holder = kelvin_to_celcius(value)
    celcius_to_fahrenheit(value_holder)
  end
end
