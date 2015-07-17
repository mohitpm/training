class Father
  
  def last_name
    p 'pawar'
  end
 
  def get_me_tooth_brush
    tooth_brush
  end

  def get_money
    self.money
  end

  protected
  
  def money
    p 'I need money'
  end

  def car
    p 'you can drive'
  end

  private
  def tooth_brush
    p "I won't give"
  end

end

class Son < Father
  
  def lets_drive
    self.car
  end

  def get_money(son)
    son.money
  end
end

class Friend
  
  def son(son)
    son.lets_drive
  end
  def get_son_money(son)
    son.money
  end
end
mohan = Father.new
mohan.get_me_tooth_brush
mohan.get_money
exit
mohit = Son.new
rohit = Son.new
omkar = Friend.new

#mohit.get_money(rohit)
omkar.get_son_money(rohit)
