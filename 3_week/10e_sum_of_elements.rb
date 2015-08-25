# doctest: Gets sum of array
# >> array = [1,2,3,-3]
# >> array_sum(array)
# => 3

def array_sum(array)
  # array.inject { |sum, n| sum + n }
  array.reduce(:+)
end
