# doctest:  age_calcuator returns decimal age in years
# >> age_in_years(9.79e8).round(2)
# => 31.04
def age_in_years(age_in_seconds)
  seconds = 60.0
  minutes = 60.0
  hours = 24.0
  days = 365.0

  age_in_seconds / seconds / minutes / hours / days
end

if __FILE__ == $PROGRAM_NAME
  seconds = 979_000_000
  puts "If you are #{seconds} seconds old, then you are "
  print format("%.2f", age_in_years(seconds))
  puts " seconds old."
end
