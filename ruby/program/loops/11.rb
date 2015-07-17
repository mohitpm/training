ascii_number=gets.chomp.to_i
print "Ascii is #{ascii_number}"
print "Ascii Value for #{ascii_number} is #{ascii_number.chr}"
for ascii in (ascii_number..127) do
  puts "Ascii Value for #{ascii} is #{ascii.chr}"
end
