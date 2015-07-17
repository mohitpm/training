class InvalidMarkError < StandardError
end
class InvalidNameError < StandardError
end

class Student
  attr_accessor :name, :marks
  def initialize
    @name = "" 
    @marks = 0
    @subject = ""
  end
  def accept_name
    name = gets.chomp
    if name =~ /\W/
      raise(InvalidNameError,"Name should only contain words")
    else
      @name = name
    end
  end
  def accept_marks
    marks = gets.chomp
    if marks =~ /\D/
      raise(InvalidMarkError,"marks should be digit")
    elsif marks > 100
      raise(InvalidMarkError,"marks should be less than 100")
    else
      @marks = marks.to
end
student = Student.new()
student.accept_name()
student.accept_marks()

