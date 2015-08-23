# # version 1 - collect
# def split_message(message)
#   message.split("\n").collect.with_index(1) do |line, index|
#      "Line #{index}: #{line}"
#   end
# end

# insert_line = "Welcome to the forum.\nHere you can learn Ruby.\n"\
# "Along with other members.\n"

# puts split_message(insert_line)

# version 2 - each_line
def split_message(message)
  output_line = ""

  message.each_line.with_index(1) do |line, index|
    output_line << "Line #{index}: #{line}"
  end

  output_line
end

insert_line = "Welcome to the forum.\nHere you can learn Ruby.\n"\
"Along with other members.\n"

puts split_message(insert_line)

# # version 3 - Victor / Kang-Kyu's version
# s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
# s.each_line.with_index 1 do |line, line_num|
#     puts "Line #{line_num}: #{line}"
# end

