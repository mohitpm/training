class Person
  @@count = 0
  def self.display
  end
  def initialize(name,address)
    @name = name
    @address = address
    @@count += 1
  end
  def count
    print Person.size
    @@count
  end
  def self.size
    print "Name :- #{@name} "
    @@count
  end
end
p1 = Person.new("mohit","hadapsar")
p2 = Person.new("omkar","hadapsar")
p1.count
Person.size


=begin
Observation 

1. can access class variable from class method
2. can access class variable from instance method
3. can access class method 

=end
