=begin
conversion between type

to Integer
  to_i

to Float
  to_f

to String
  to_s
to Symbol
  to_sym
to Array
  to_a

Array Hash Conversion
 Hash[*a]
=end
hash={:a=>"argentina",:b=>"brazil",:i=>"india"}
print hash.keys
print hash.values
print hash.to_a
