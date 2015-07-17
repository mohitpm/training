def print_menu
  menus="--- Menu---\n"\
        "a) Hello\n"\
        "b) Bye\n"\
        "c) Exit\n"
  puts menus
end

print_menu
option=STDIN.getc

case option
when "a"
  puts " Hello "
when "b"
  puts " Bye "
when "c"
  exit
else
  puts "Invalid Option"
end
