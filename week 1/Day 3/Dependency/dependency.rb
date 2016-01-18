class Helicopter
	attr_reader :wheels
	def initialize
		@wheels = 3
		@sound = "TuTuTu"
	end
end

class car
	attr_reader :wheels
	def initialize()
		@wheels = 4
		@sound = "Vroom"
	end
end

class MotorCycle
	attr_reader :wheels
	def initialize
		@wheels = 2
		@sound = "Broom"
	end
end

class Batmobile
	attr_reader :wheels
	def initialize
		@wheels = 8
		@sound = "Zoom"
	end
end

class WheelCounter
	def initialize
	vehicles = []
end

def add_vehicle(single_vihecle)
	@vehicles.push(single_vehicle)
end
def wheel_count
	total_wheels = 0
	@vehicles.each do | vehicle |
		total_wheels += vehicle.wheels 
end
total_wheels
end
end
#created some vihecles of different types
chopper = Helicopter.new
telsa = Car.new
ninja = MotorCycle.new
batmobile = Batmobile.new
counter = WheelCounter.new
#add the vehicles to the counter
counter.add_vehicle(chopper)
counter.add_vehicle(telsa)
counter.add_vehicle(ninja)
counter.add_vehicle(batmobile)

puts counter.wheel_counter
