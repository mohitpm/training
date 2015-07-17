user_name=gets.chomp
avail_users=['mohit','rohit','sahil']
if avail_users.include?(user_name)
  puts "Greeting For You"
else
  puts "Hello #{user_name}"
end
