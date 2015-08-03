class User
  attr_accessor :first_name, :last_name, :age, :errors
  
  def initialize(**attrs)
    @first_name = attrs[:first_name]
    @last_name = attrs[:last_name]
    @age = attrs[:age]
    @errors = {}
  end

  def valid?
    @is_valid = true
    validate :first_name, { length: {exact: 6, minimum:4, maximum: 10 }, numericality:false }
    validate :last_name, { presence:true }
    validate :age, { numericality:true }
    @is_valid
  end
  
  private

  def set_error(argument, err_type, err_msg)
    error = ["#{err_type} - #{err_msg}"]
    (@errors[argument].nil?) ? @errors[argument] = error : @errors[argument] += error
  end

  def length(argument, value, args)
    return nil unless args.is_a?(Hash)
    err_type = "Length"
    err_str = if args.has_key?(:exact)
                (value.length != args[:exact]) ? "Length not match" : nil
              elsif args.has_key?(:minimum) && args.has_key?(:maximum)
                ( ! (args[:minimum]..args[:maximum]).member?(value.length) ) ? 
                "Value not between #{args[:minimum]} and #{args[:maximum]}" : nil
              elsif args.has_key?(:minimum)
                (value.length <= args[:minimum]) ? "Value less than minimum." : nil
              elsif args.has_key?(:maximum)
                (value.length >= args[:maximum]) ? "Value more than maximum." : nil
              end
    if err_str != nil
      set_error(argument, err_type, err_str)
      @is_valid = false
    end
  end
  
  def numericality(argument, value, expected_val)
    return nil unless expected_val.is_a?(TrueClass) || expected_val.is_a?(FalseClass) 
    err_type = "Numeric"
    unless value.is_a?(Numeric) == expected_val
      @is_valid = false
      set_error(argument, err_type, "Numericality Error")
    end
  end
  
  def presence(argument, value, expected_val)
    return nil unless expected_val.is_a?(TrueClass) || expected_val.is_a?(FalseClass) 
    err_type = "presence"
    unless !value.nil? == expected_val
      @is_valid = false
      set_error(argument, err_type, "Presence Error")
    end
  end

  def validate(argument, types)
    value = instance_variable_get("@#{argument}")
    return nil if value == nil
    types.keys.each { |type| send(type, argument, value, types[type]) }
  end
end

user = User.new(first_name:"asdfg",last_name:"pawar", age:"3djfhksdjf4")
p user.valid?
p user.errors
