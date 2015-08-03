# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
mohit = User.new(name:"mohit")
mohit.save!
mohit.roles.create(name:"programmer")
rohit = User.new(name:"rohit")
rohit.save!
rohit.roles.create(name:"programmer0")

tohit = User.new(name:"tohit")
tohit.save!
tohit.roles.create(name:"programmer1")
=end

(1..10).each do |index|
  mohit = User.create(name:"mohit")
  role  = Role.create(name:"programmer")
  mohit.roles<<role
end
