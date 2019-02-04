class UFO
  def initialize(x, y)
    @x_coordinate = x
    @y_coordinate = y
    @showing = false
    @is_hit = false
  end

  def draw()
    @showing = true
  end
end
