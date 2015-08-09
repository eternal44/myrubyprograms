def age_calculator(x)

  seconds = 60.0
  minutes = 60.0
  hours = 24.0
  days = 365.0

  age = x / seconds / minutes / hours / days

  puts format("%.2f", age)
end

seconds = 979_000_000
age_calculator(seconds)




