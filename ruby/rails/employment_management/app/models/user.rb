class User < ActiveRecord::Base
  
  validates :name, :first_name, :last_name, presence:true
  validates :gender, inclusion: { in: %w(male female) }
  #validates :age , numericality: true,inclusion:{in: (self.gender == "male") ? (18..50) : (16..40) }
  validates :age ,  inclusion:{ in: :get_range}
  before_validation :remove_white_spaces
  after_save :get_name

  protected
  def get_range
    (self.gender == "male" ) ? (0..50) : (16..40)
  end
  def remove_white_spaces
    self.first_name.strip! if first_name != nil
    self.last_name.strip! if last_name != nil
  end

  def get_name
    self.name = self.first_name + self.last_name
  end

end
