class Fort
	def initialize(x, y)
		@x = x
		@y = y
		@show = true
	end

  def remove:
  	@show = false
  end

  def take_damage(hit_point)
    # TODO show area of damage
  end
end