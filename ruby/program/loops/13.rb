puts "Enter Sentence"
sentence = gets.chomp
puts "Enter Word"
word = gets.chomp
if sentence.include?word
  print "Found"
else
  print "Not Found"
end
