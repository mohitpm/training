require 'rubygems'
require 'highline/import'
password=ask("Password:") {|password| password.echo=false}
puts "You Enter #{password}"
