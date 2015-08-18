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

def leap_year?(year)
  if year % 400 == 0
    true
    # yield calc minutes
  elsif year.to_s[-2..-1] != "00" && year % 4 == 0
    true
    # yield calc minutes
  else
    false
  end
end


