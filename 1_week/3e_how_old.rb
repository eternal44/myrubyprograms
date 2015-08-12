# doctest: age_calcuator returns decimal age in years
# >> age_in_years(9.79e8).round(2)
# => 31.04

# This method converts your age in seconds and converts them to years.
def age_in_years(age_in_seconds)
  seconds = 60.0
  minutes = 60.0
  hours = 24.0
  days = 365.0

  age_in_seconds / seconds / minutes / hours / days
end


# Can't pass string_path hash into format.  Figure out why later

if __FILE__ == $PROGRAM_NAME
  seconds = 979_000_000
  formatting = '%<have>s %<seconds>i %<second_part>s %<converted>.2f %<really_last_part>s'
  string_parts = {
    have: "If you have ",
    seconds: seconds,
    second_part: "seconds then you are",
    converted: age_in_years(seconds),
    really_last_part: "years old"
  }
  puts formatting % string_parts
end
