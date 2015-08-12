# doctest: convert age to a whole year
# >> ages = 979000000
# >> seconds_to_years_and_months(ages)
# => "I'm 31 years old."
# doctest: convert age to a year and some months
# >> seconds_to_years_and_months(300_000_000)
# => "I'm 9 years and 6 months old."


# This method takes your age in seconds and converts it to years & months
def seconds_to_years_and_months(age_in_seconds)
  minutes = 60.0
  hours = 60.0
  days = 24.0
  years = 365
  months = 12.0

  age_in_months = (age_in_seconds / minutes / hours / days / years * months)
  age_in_months = age_in_months.to_i

  if age_in_months % 12 != 0
    input_months = (age_in_months % 12)
  else
    input_months = 0
  end

  input_years = age_in_months / 12

  return input_years, input_months
end

# Library guard
if __FILE__ == $PROGRAM_NAME
  seconds = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

  seconds.each do |age|
    formatting = '%<have>s %<seconds>i %<second_part>s'\
      '%<converted_years>3d %<years>s %<months>i %<last_part>s'
    string_parts = {
      have: "If you have ",
      seconds: age,
      second_part: "seconds then you are",
      converted_years: seconds_to_years_and_months(age)[0],
      years: "years and",
      months: seconds_to_years_and_months(age)[1],
      last_part: "months old." 

    }
    puts formatting % string_parts
  end
end
