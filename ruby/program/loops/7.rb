str1=gets.chomp.chars.sort
str2=gets.chomp.chars.sort
ret=str1<=>str2
if ret==0
  puts "same"
else
  puts "different"
end
