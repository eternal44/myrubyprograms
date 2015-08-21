# doctest: correct output
# >> split_message("Welcome to the forum.\nHere you can learn Ruby.\n"\
#    "Along with other members.\n")
# => ["Line 1: Welcome to the forum.", "Line 2: Here you can learn Ruby.", "Line 3: Along with other members."]

def split_message(message)
  message.split("\n").collect.with_index { |i, j| "Line #{j + 1}: " + i }
end

split_message("Welcome to the forum.\nHere you can learn Ruby.\n"\
"Along with other members.\n")

