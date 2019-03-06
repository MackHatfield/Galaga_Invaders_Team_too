class Missile

	attr_accessor :velocity, :location

	def initialize(args)
			@location = Vector.new(args[:x], args[:y])
			@velocity = args[:velocity]
	end

	def collides_with?(object)
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
