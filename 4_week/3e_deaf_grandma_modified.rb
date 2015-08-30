gem 'prompt_jyoun44', '0.1.0'
require 'prompt'
if __FILE__ == $0 # the same as $PROGRAM_NAME
  puts "Talk to Granny.  She's deaf."

  count = 0
  begin
    answer = prompt("Say something, Sonny! ").chomp

    answer != answer.upcase ?
      puts('HUH?! SPEAK UP, SONNY') :
      puts("NO, NOT SINCE #{rand(1930..1950)}")

    answer == 'BYE' ? count += 1 : count = 0

  end while count != 3
end
