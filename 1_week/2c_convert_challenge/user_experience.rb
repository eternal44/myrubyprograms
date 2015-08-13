require_relative "2c_convert_challenge"
begin
puts ""
puts "This program will convert temperature units."
puts ""
puts "** DIRECTIONS:  Enter the conversion you'd like to make:"
puts "1) Celcius to Fahrenheit"
puts "2) Celcius to Kelvin"
puts "3) Fahrenheit to Celcius"
puts "4) Fahrenheit to Kelvin"
puts "5) Kelvin to Celcius"
puts "6) Kelvin to Fahrenheit"
puts ""

unit = gets.chomp.to_i
puts ""

puts "Next, enter the value in degrees you wish to convert"

begin
  value = gets.chomp.to_f

  # validate temperature doesn't exceed absolutes
  limit =(1.416 * 10**32)
  check_range = (-273.15..limit).cover?(value)

  if check_range == false
    puts "Invalid value.  Try again"
  end
end while check_range != true


display = ConvertTemperature.new(unit, value)
puts display.show_conversion
puts ""
puts "** DIRECTIONS:  Press enter for main menu or type 'exit' to quit."
exit = gets.chomp

end while exit != "exit"
