Welcome to the RubyCourse temperature changing app.

Use:
Run the app by starting up the "user_experience.rb" file in your
console.  All modules required for this app are located within this
directory.

### Developer notes
ruby -l

    doctest: c to f should give correct results
    >> a = ConvertTemperature.new(1, 0)
    >> a.show_conversion
    => "0.00 degrees Celcius | 32.00 degrees Fahrenheit"
    doctest: c to k should give correct result
    >> c = ConvertTemperature.new(2, 0)
    >> c.show_conversion
    => "0.00 degrees Celcius | 273.15 degrees Kelvin"
    doctest: f to c should give correct result
    >> b = ConvertTemperature.new(3, 32)
    >> b.show_conversion
    => "32.00 degrees Fahrenheit | 0.00 degrees Celcius"
    doctest: f to k should give correct result
    >> d = ConvertTemperature.new(4, 32)
    >> d.show_conversion
    => "32.00 degrees Fahrenheit | 273.15 degrees Kelvin"
    doctest: k to c should give correct result
    >> e = ConvertTemperature.new(5, 273.15)
    >> e.show_conversion
    => "273.15 degrees Kelvin | 0.00 degrees Celcius"
    doctest: k to f should give correct result
    >> f = ConvertTemperature.new(6, 273.15)
    >> f.show_conversion
    => "273.15 degrees Kelvin | 32.00 degrees Fahrenheit"

