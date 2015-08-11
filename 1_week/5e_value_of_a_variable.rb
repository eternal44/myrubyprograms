# the bit of code below will print "my_string" first because ruby prioritizes 
# bare names over method calls
my_string = 'Hello Ruby World' 

puts my_string

def my_string
    'Hello World' 
end

