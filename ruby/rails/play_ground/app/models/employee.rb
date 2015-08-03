class Employee < ActiveRecord::Base
  has_many :pictures,as: :imageable
  default_scope { where(addr:"swarget") }
  scope :get_emp_by_addr, ->(addr) { where("addr=\"#{addr}\") }
  scope :get_new_emp, ->(minute) { where("created_at <= ?",Time.now - minute.hour) } 
  def self.get_new_emp(time)
    self.where("created_at >= ?",Time.now - time.hour)
  end
end
