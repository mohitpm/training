class Vehicle
  attr_accessor :name, :top_speed
  
  def initialize(name, top_speed)
    @name = name
    @top_speed = top_speed
  end

  def is_fuel?
    true
  end

  def is_covered?
    false
  end

  def is_fire?
    false
  end
  
  def is_fly?
    false
  end

  def is_autopilot?
    false
  end

end 

class Cycle < Vehicle
  
  def intialize(name,top_speed)
    super(name, top_speed)
  end

  def is_fuel?
    false
  end
  
end

class Car < Vehicle

  def initialize(name, top_speed)
    super(name, top_speed)
  end

  def is_covered?
    true 
  end
end

class Rocket < Vehicle

  def initialize(name, top_speed)
    super(name, top_speed)
  end

  def is_covered?
    true
  end

  def is_autopilot?
    true
  end

  def is_fly?
    true
  end
end

class Tank < Vehicle

  def initialize(name, top_speed)
    super(name, top_speed)
  end
  
  def is_covered?
    true
  end
  
  def is_autopilot?
    true
  end

end

class VehicleRace

  attr_accessor :vechiles
  
  def initialize(vehicles)
    @vehicles = vehicles
  end

  def get_winners
    max_speed = get_max_speed
    winners = @vehicles.select{ |vehicle| vehicle.top_speed == max_speed }
  end

  private

  def get_max_speed
    vehicle_with_max_speed = @vehicles.max{|veh1 , veh2| veh1.top_speed <=>  veh2.top_speed}
    vehicle_with_max_speed.top_speed
  end

end

class VehicleRelay

  attr_reader :vehicle_groups
  
  def initialize(dist, *vehicle_groups)
    raise ArgumentError, "Missing distance parameter" if dist == nil
    raise ArgumentError, "Missing Vechile_Groups parameter " if vehicle_groups == nil
    @dist = dist
    @vehicle_groups = vehicle_groups
  end
 
  def get_winners
    max_group_time = get_max_group_time
    winners_groups = vehicle_groups.select { |grp| group_time(grp) == max_group_time }
  end

  private

  def group_time(vehicles)
    group_time = 0
    vehicles.each { |vehicle| group_time += (@dist/vehicles.count)/vehicle.top_speed}
    return group_time
  end

  def get_max_group_time
    group_with_max_group_time = @vehicle_groups.max{|grp1, grp2| group_time(grp1) <=> group_time(grp2)}
    max_group_time = group_time(group_with_max_group_time)
  end

end

cycle = Cycle.new("Herculus", 40)
car = Car.new("Audi", 40)
rocket = Rocket.new("apollo", 40)
tank = Tank.new("bull", 40)

relay = VehicleRelay.new(100,[cycle, car], [rocket, tank])
winners = relay.get_winners

puts "\n---- Winners of Relay -----"
winners.each_with_index do |group, index|  
  group.each_with_index do |vehicle, index| 
    print "#{index}) #{vehicle.class} - #{vehicle.name}\n"
  end
end

race = VehicleRace.new([cycle, car])
winners = race.get_winners

puts "------Winner of Race-----------"
winners.each_with_index do | vehicle, index|
  print "#{index}) #{vehicle.class} - #{vehicle.name} \n"
end

(cycle.is_fly?) ? puts("#{cycle.name} can fly") : puts("#{cycle.name} cannot fly")
(cycle.is_covered?) ? puts("#{cycle.name} is covered"): puts("#{cycle.name} is not covered")
(cycle.is_fire?) ? puts("#{cycle.name} has fire "): puts("#{cycle.name} has no fire")
(cycle.is_fuel?) ? puts("#{cycle.name} has fuel "): puts("#{cycle.name} has no fuel")
(cycle.is_autopilot?) ? puts("#{cycle.name} has autopilot mode "): puts("#{cycle.name}  has no autopilot mode")
