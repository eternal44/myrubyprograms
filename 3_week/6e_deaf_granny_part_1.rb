begin
  answer = gets.chomp

  if answer.upcase != answer
    puts 'HUH?! SPEAK UP, SONNY'
  else
    puts "NO, NOT SINCE #{rand(1930...1950)}!"
  end

end while answer != 'BYE'

