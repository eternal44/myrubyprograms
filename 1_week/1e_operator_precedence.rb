=begin
Its a matter of what gets executed first.  

# 1st case - false
Since the "=" goes first it doesn't matter that "x" is being compared with "z"
"x" is set to "y" so when you "puts x" it returns "x" as "false"

# 2nd case - false
Same thing as the 1st case but with an emphasized prioritization from the 
parenthesis.

# 3rd case - true
The parenthesis reprioritizes what would normally happen.  As before we 
start with the parenthesis which returns "false" and "x" is then set to
"false"

=end

y = false
z = true
x = y or z
puts x 
(x = y) or z
puts x 
x = (y or z)
puts x
