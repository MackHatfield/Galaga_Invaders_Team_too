class UFO
  include Placeable
  
  WIDTH = 200
  HEIGHT = 100
  DEFAULT_VELOCITY = 5
  ORDNANCE_VELOCITY = -20
  LEFT_START_COORDINATE = -(WIDTH * 2)

  def initialize(screen_width)
    @x = LEFT_START_COORDINATE
    @y = HEIGHT * 2;
    place_on_screen(x,y)
  end
end
