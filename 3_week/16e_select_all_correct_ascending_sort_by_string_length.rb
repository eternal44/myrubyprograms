# select all of the ways you can sort in an ascending order

a = ["Magazine", "Sunday", "Jump"]
 Answers:
 1. a.sort # alphabetizes.  Not ordered by string length
 2. a.sort { |s| s } # syntax error
 3. a.sort { |l, r| l <=> r } # alphabetizes.  Not ordered by string length
 4. a.sort { |l, r| l.length <=> r.length }  # true
 5. a.sort_by { |s| s } # alphabetizes.  Not ordered by string length
 6. a.sort_by { |s| s.length } # true
