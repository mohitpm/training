number=STDIN.getc.to_i
puts "You Enter #{number}"
i=number
while i>0 do
  puts "*"*i
  i -= 1
end
i=1
while i<=number do
  puts "*"*i
  i += 1
end
