def method
    a = 50
      puts a
end

a = 10
method
puts a

=begin
This displays like so:
50
10

because "a" is assigned a value first inside the method and once again
outside of it so there are two different values for "a".

=end

