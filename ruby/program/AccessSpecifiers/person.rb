class Person
  
  def name
    @name
  end

  def name=(name)
    @name =  name
  end
 
  def set_name(value)
    self.name = value
  end

  def get_name
    xyz = 1
    name
  end
end

mohit = Person.new
mohit.set_name("mohit")
print mohit.get_name

