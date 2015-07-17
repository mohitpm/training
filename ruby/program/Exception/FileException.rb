retries = 0
begin
  puts "Enter the File name to display"
  input_path = gets.chomp
  retries += 1
  puts File.read(input_path)
rescue Exception => e
  print "Exception occured #{e}"
  retry if retries < 3
end
