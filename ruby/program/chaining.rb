class Speaker
  def self.say(what)
    print "Hello "
    return self
  end
  def self.drink(what)
    print "Drink #{what}"
    return self
  end
end
Speaker.say("mohit").drink("wine")
