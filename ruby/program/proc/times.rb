def print_times(number)
  return Proc.new{ number.times { print "hello" }}
end
times3 = print_times(3)
times3.call()
