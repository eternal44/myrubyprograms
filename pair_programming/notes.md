# formatting strings

Looking at the documentation from "ri" we see that we can do this:


= String#%

(from ruby site)
----------------------------------------------------------------------------
  str % arg   -> new_str

----------------------------------------------------------------------------

Format---Uses _s_t_r as a format specification, and returns the result of
applying it to _a_r_g. If the format specification contains more than one
substitution, then _a_r_g must be an Array or Hash containing the values to
be substituted. See Kernel::sprintf for details of the format string.

 doctest: "%05d" % 123
 >> "%05d" % 123
 => "00123"
 doctest: "%-5s: %08x" % [ "ID", self.object_id ] 
 >>  "%-5s: %08x" % [ "ID", self.object_id ] # This is OK to fail (dynamic)
 => "ID   : 200e14d6"
 doctest: foo = %{foo} % { foo: 'bar'}
 >> "foo = %{foo}" % { :foo => 'bar' }
 => "foo = bar"


