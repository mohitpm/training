=============================================================================
Question 1).


def is_valid_email?(email)
  (email =~ /[\w]+@[\w]+\.[\w]+/) ? true : false
end
def email_compose(receiver_address, body, sender_address, sender_signature="Thanks and Regards.")
  
  return "receiver_address is not valid " unless is_valid_email?(receiver_address)
  return "body should be String" unless body.is_a?(String)
  return "sender_addrss is not valid `" unless is_valid_email?(sender_address)
  return "sender_signature should be String" unless sender_signature.is_a?(String)
  
  email= " To        :- #{receiver_address} \n"\
       + " From      :- #{sender_address} \n"\
       + " Body      :- #{body} \n"\
       + " Signature :- #{sender_signature} \n"
  return email
end



email=email_compose("mohit@joshsoftware.com","1","omkar@gmail.com","thanks")
puts email


======================================================================
Question 2)

def set_config(chances:5,dictionary:[],player_name:"Guest")
  return "Chances should be Integer" unless chances.is_a?(Integer)
  return "Dictionary should be Array  " unless dictionary.is_a?(Array)
  return "Guest Should be String " unless player_name.is_a?(String)
  
  config = {chances:chances, dictionary:["four","cat"] + dictionary, player:player_name}

end
config = set_config(chances:10 ,dictionary:"cow",player_name:"mohit")
print config


=======================================================================

Question 3)

def create_contact(name:,number:,email:,date_of_birth:nil,work_day:nil,**other_info)
  return "name should be String" unless name.is_a?(String)
  return "number should be String" unless number.is_a?(String)
  return "number should be 10 letter" unless number.length == 10
  return "email is invalid " if (email !~ /[\w]+@[\w]+\.[\w]+/)
  return "date_to_birth should be String " unless (date_of_birth.is_a?(String) || date_of_birth.is_a?(NilClass))
  return "workd_day should be Integer " unless (work_day.is_a?(Integer) || work_day.is_a?(NilClass))

  contact_info = "name, number, email is mandatory" if !name || !number || !email
  contact_info = {name:name ,number:number ,email:email}
  contact_info.merge!({date_of_birth: date_of_birth, work_day: work_day})
  contact_info.merge!(other_info)
  return contact_info

end
contact_info = create_contact(name:"mohit", number:"8604005040",
                              email:"mohit@joshsoftware.com",gender:"male")
puts contact_info

==========================================================================

Question 4) valid arugment rules

1. if using position arg and keyword arg then
  use position arg first, then keyword arg

2. default argument should come before splat argument

3. keyword splat should not be before any argument



