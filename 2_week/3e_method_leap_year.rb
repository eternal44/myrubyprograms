# doctest: correct century leap year
# >> query_leap_year?( 400 )
# => true
# doctest: false century leap year
# >> query_leap_year?( 300 )
# => false
# doctest: correct normal leap year
# >> query_leap_year?( 304 )
# => true
# doctest: normal year tests false
# >> query_leap_year?( 1993 )
# => false
# doctest: 1900 is a century but not leap year
# >> query_leap_year?( 1900 )
# => false

query_leap_year = ->(year) do
  year % 400 == 0 || year % 100 != 0 && year % 4 == 0
end

# def query_leap_year?(year)
#   year % 400 == 0 || year % 100 != 0 && year % 4 == 0
# end

# doctest: minutes in a normal year
# >> year_in_minutes?(2001)
# => 525600
# doctest: minutes in a leap year
# >> year_in_minutes?(2000)
# => 527040

year_in_minutes = ->(year) do
  60 * 24 * (query_leap_year.call(year) ? 366 : 365)
end

# def year_in_minutes?(year)
#   60 * 24 * (query_leap_year?(year) ? 366 : 365)
# end


if __FILE__ == $PROGRAM_NAME
  # doctest: output correct
  # >> year = 2005
  # >> leap_or_not = query_leap_year?(year)
  # >> "Year #{year} is a leap year? #{leap_or_not}"
  # => "Year 2005 is a leap year? false"
  # >> minutes = year_in_minutes?(year)
  # >> "And it has #{minutes} minutes."
  # => "And it has 525600 minutes."

  # lambda version
  # [2005, 2008, 1900, 2000].each do |year|
  #   my_minutes_answer = year_in_minutes.call(year)
  #   is_leap_year_or_not = query_leap_year.call(year)
  #   report = "%i is a leap year? %s\nAnd it has %i minutes"
  #   puts format(report, year, is_leap_year_or_not, my_minutes_answer)
  # end

  # method version
  [2005, 2008, 1900, 2000].each do |year|
    my_minutes_answer = year_in_minutes?(year)
    is_leap_year_or_not = query_leap_year?(year)
    report = "%i is a leap year? %s\nAnd it has %i minutes"
    puts format(report, year, is_leap_year_or_not, my_minutes_answer)
  end

end


