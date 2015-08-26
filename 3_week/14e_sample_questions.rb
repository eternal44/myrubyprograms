h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }

Answers:

# 1. h.member?("Matz")
2. h.member?("Python") # <- True
# 3. h.include?("Guido")
4. h.include?("Ruby") # <- True
5. h.has_value?("Larry") # <- True
6. h.exists?("Perl") # this method doesn't even exist
