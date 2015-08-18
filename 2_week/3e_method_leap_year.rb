# doctest: correct century leap year
# >> leap_year?(400)
# => true
# doctest: false century leap year
# >> leap_year?(300)
# => false
# doctest: correct normal leap year
# >> leap_year?(304)
# => true
# doctest: normal year tests false
# >> leap_year?(1993)
# => false
# doctest: 1900 is a century but not leap year
# >> leap_year?(1900)
# => false

def leap_year?(year)
  year % 400 == 0 ||
  year % 4 == 0 && year % 100 != 0
end

# doctest: minutes in a normal year
# >> minutes_in_a_year(1001)
# => 526_125_600
# doctest: minutes in a leap year
# >> minutes_in_a_year(1000)
# => 525_600_000


def minutes_in_a_year(year)
  minutes = 60
  hours = 24

  if leap_year?(year) # I could probably do this shorter
    days = 366
  else
    days = 365
  end

  year * days * hours * minutes
end

if __FILE__ == $PROGRAM_NAME
  # doctest: working?
  # >> year = 2005
  # >> leap_or_not = leap_year?(year)
  # >> "Year #{year} is a leap year? #{leap_or_not}"
  # => "Year 2005 is a leap year? false"
  [2005, 2008, 1900, 2000].each do |year|
    my_minutes_answer = minutes_in_a_year(year)
    is_leap_year_or_not = leap_year?(year)
    report = "%i is a leap year? %s\nAnd it has %i minutes"
    puts format(report, year, is_leap_year_or_not, my_minutes_answer)
  end
end

#

