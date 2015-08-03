class Speaker
  def self.say(who)
    print "#{who} "
    return self
  end
  def self.drink(what)
    print "Drink #{what}"
    return self
  end
end
print "Enter Name :- "
name = gets.strip
print "Enter Liquid :- "
liquid = gets.strip
Speaker.say(name).drink(liquid)
