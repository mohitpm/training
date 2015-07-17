def division(divident, divisor=1)
    divident/divisor
  rescue Exception => e
    print $! 
end
puts division("10")
puts division(10,0)
puts division(10,2)
