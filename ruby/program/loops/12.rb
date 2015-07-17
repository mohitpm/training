str=gets.chomp
array=str.split("")
puts "Array is :- "
array.each do |i|
  print " #{i}"
end
str=array.join
puts "\nString is :- #{str}"
