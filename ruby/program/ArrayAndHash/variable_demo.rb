class Parent
  protected
  def money
    p 'parent\'s money'
  end

  private
  def wallet
    p 'parent\'s wallet'
  end
end

class Son < Parent
  def borrow_money(parent)
    self.money
    parent.money
    # self.wallet
  end
end

class Friend
  def borrow_money_for(friend, parent)
    friend.borrow_money(parent)
  end
end

devendra = Parent.new
mohit = Son.new
sakshi = Son.new
ashwini = Friend.new

# devendra.money
# mohit.borrow_money
ashwini.borrow_money_for(sakshi, devendra)
