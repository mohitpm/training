class User
  
  attr_accessor :first

  def initialize(attrs = {})
    @first_name = (attrs.has_key?(:first_name)) ? attrs[:first_name] : ""
    @last_name = (attrs.has_key?(:last_name)) ? attrs[:last_name] : ""
    @age = (attrs.has_key?(:age)) ? attrs[:age] : 0
  end
  
  def print
    print "in print"
  end
  def attributes(attrs = {})
    @first
  end
end
user = User.new
user.print
