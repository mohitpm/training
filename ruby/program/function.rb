def test(a1="Ruby",a2="Perl")
  puts "The Programming language is #{a1}";
  puts "The Programming Language is #{a2}";
end
def fun_with_no_return
  i=100
  j=10
  k=0
end
def var_nos_of_param(*params)
  puts "Number of Parameters #{params.length}";
  for param in params
    puts param
  end
end
#test "C","C++"
#test
#print fun_with_no_return
var_nos_of_param("1",2,3.3,"Hello, World")
