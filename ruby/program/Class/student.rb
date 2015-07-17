class Student
  def hello
    self
    super
  end
  def mark
    print "Instance method"
  end
  def self.mark
    p self
  end
end
s = Student.new
s.mark
Student.mark
