def calculation(a, b, operation) 
  operation.call(a,b)
end
p calculation(2, 3, lambda { |a, b| a + b } )
def calculation2(a, b)
  yield(a, b)
end
p calculation2(5,7) { |a, b| a + b }

