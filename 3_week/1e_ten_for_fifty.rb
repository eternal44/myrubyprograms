class Try
def method
  a = 50
  puts a
  p self.inspect
end
end

a = 10
Try.new.method
  puts self
puts a

# This displays like so:
# 50
# 10

# because "a" is assigned a value first inside the method and once again
# outside of it so there are two different values for "a".
