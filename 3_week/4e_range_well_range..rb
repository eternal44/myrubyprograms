# a = (1930...1951).to_a
# puts a[rand(a.size)]

a = [*1930...1951]
b = [1930...1951]
puts a
puts b
# a.map.with_index(1) do |year, index|
#   p "#{index} #{year}"
# end

# The answer is:  I'll never see "5. 1951".  This script will attempt to
# randomly call a[21] which will return nil.  There are 21 years in the array.
# but since ruby arrays are "n-1" calling a[21] is actually calling the
# 22nd year in the array which doesn't exist
