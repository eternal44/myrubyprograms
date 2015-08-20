# doctest: correct century leap year
# >> query_leap_year[400]
# => true
# doctest: false century leap year
# >> query_leap_year[300]
# => false
# doctest: correct normal leap year
# >> query_leap_year[304]
# => true
# doctest: normal year tests false
# >> query_leap_year[1993]
# => false
# doctest: 1900 is a century but not leap year
# >> query_leap_year[1900]
# => false

query_leap_year = ->(year) do
  year % 400 == 0 ||
  year % 4 == 0 && year % 100 != 0
end

# doctest: minutes in a normal year
# >> minutes_in_year[2001]
# => 525600
# doctest: minutes in a leap year
# >> minutes_in_year[2000]
# => 527040

minutes_in_year = ->(year) { 60 * 24 *
                    (query_leap_year.call(year) ? 366 : 365) }

if __FILE__ == $PROGRAM_NAME
  [2005, 2008, 1900, 2000].each do |year|
    my_minutes_answer = minutes_in_year[year]
    is_leap_year_or_not = query_leap_year.call(year)
    report = "%i is a leap year? %s\nAnd it has %i minutes."
    puts format(report, year, is_leap_year_or_not, my_minutes_answer)
  end
end

