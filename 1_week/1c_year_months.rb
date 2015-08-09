def convert(x)
  x.each do |b|
    a = b / 60.0 / 60.0 / 24.0 / 365.0 * 12.0 
    a = a.to_i

    if a % 12 != 0
      months = a % 12 
      months = " and #{months} months"
    end

    years = a / 12

    puts "I'm #{years} years#{months} old."
  end 
end

ages = [979000000, 2158493738, 246144023, 1270166272, 1025600095]

convert(ages)

