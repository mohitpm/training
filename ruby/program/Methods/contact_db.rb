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
