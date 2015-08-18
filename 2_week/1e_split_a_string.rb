def split_message(message)
  lst = message.split("\n")
  count = 1

  lst.each do |part|
    puts "Line #{count}:" + part
    puts ""
    count += 1
  end
end

split_message("Welcome to the forum.\nHere you can learn Ruby.\n"\
"Along with other members.\n")
