class Missile
	include Placeable
	attr_accessor :x, :y :velocity

	def initialize(args)
	  x = args[:x]
	  y = args[:y]

	  place_on_screen(x,y)
	  @velocity = args[:velocity]
	end
	
	def collide_with(object)
		#TODO
	end

	def offscreen?
		y < 0
	end

	def draw
		puts self
	end

	def move
		y += velocity
	end

end
