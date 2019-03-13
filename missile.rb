class Missile
	include Placeable
	attr_accessor :location, :velocity

	def initialize(args)
	  @location = Vector.new(args[:x], args[:y])

	  place_on_screen(location.x, location.y)
	  @velocity = args[:velocity]
	end
	
	def collide_with(object)
		self.location == object.location
	end

	def offscreen?
		location.y < 0
	end

	def draw
		puts self
	end

	def move
		location.y += velocity
	end

end

Vector = Struct.new(:x, :y)

