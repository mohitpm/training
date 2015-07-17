class Customer
  @@no_of_customer
  def initialize(id,name,addr)
    @cust_id=id
    @cust_name=name
    @cust_addr=addr
    @@no_of_customer +=1
  end
  def print()
    puts @@no_of_customer
    puts "Customer_id is #@cust_id"
    puts "Customer_name is #@cust_name"
    puts "Customer_addr is #@cust_addr"
  end
end

class Example
  VAR1=100
  VAR2=200
  def show
    puts self
    puts "Value of the first Constant is #{VAR1}"
    puts "Value of the Second Constant is #{VAR2}"
  end
end
obj=Example.new()
obj.show

#cust1=Customer.new("1","Mohit","Hadapaser")
#cust1.print
#cust2=Customer.new("2","Rohit","Swarget")
#cust2.print
