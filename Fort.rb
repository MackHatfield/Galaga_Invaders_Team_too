class Fort
  include Placeable

  def initialize(x,y)
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
