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
  formatting = '%s %i %s %.2f %s'
  first_part = "If you have "
  last_part =  "seconds then you are"
  really_last_part = 'years old'
  puts format(
    formatting,
    first_part,
    seconds,
    last_part,
    age_in_years(seconds),
    really_last_part
  )
end
