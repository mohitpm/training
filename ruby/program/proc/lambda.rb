def print_hello
  lam = lambda { return }
  lam.call
  p "hello"
end
def print_hi
  proc = Proc.new{ return }
  proc.call
  p "hi"
end
#print_hello
print_hi
