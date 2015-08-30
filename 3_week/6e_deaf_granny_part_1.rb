gem 'prompt_jyoun44', '0.1.0'
require 'prompt'
if __FILE__ == $0 # the same as $PROGRAM_NAME
  puts "Talk to Granny.  She's deaf."

  begin
    answer = prompt("Say something, Sonny! ").chomp

    answer != answer.upcase ?
      puts('HUH?! SPEAK UP, SONNY') :
      puts("NO, NOT SINCE #{rand(1930..1950)}")

  end while answer != 'BYE'
end
