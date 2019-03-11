module Placeable

  def place_on_screen(x, y)
    @x = x
    @y = y
    @show = true
  end

  Vector = Struct.new(:x, :y)
end
