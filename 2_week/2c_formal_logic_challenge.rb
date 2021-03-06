# doctest: get ternary equivalent when true
# >> ternary(3 > 1,"hello",3)
# => "hello"
# doctest: get ternary equivalent when false
# >> ternary(3 < 1,"hello",3)
# => 3

# no "if" statement
def ternary(statement, true_result, false_result)
  statement && true_result || false_result
end

# "if" statement
# def ternary(statement, true_result, false_result)
#   (true_result if statement == true) ||
#   (false_result if statement == false)
# end
