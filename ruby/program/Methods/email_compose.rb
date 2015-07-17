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
