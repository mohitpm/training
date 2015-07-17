number=STDIN.gets.to_i
a=0
b=1
c=a+b
while c<=number
  print " #{c}"
  c=a+b
  a,b=b,c
end
