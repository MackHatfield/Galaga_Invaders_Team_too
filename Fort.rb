class Fort
  include Placeable
  attr_accessor :location

  def initialize(args)
    @location = Vector.new(args[:x], args[:y])
    place_on_screen(x,y)
  end

  def remove:
  	@show = false
  end

  def take_damage(hit_point)
    # TODO show area of damage
  end

  def show_level(level)
    # TODO: func to display level
  end
end
