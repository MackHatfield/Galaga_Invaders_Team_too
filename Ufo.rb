class UFO
  attr_accessor :x
  WIDTH = 200
  HEIGHT = 100
  DEFAULT_VELOCITY = 5
  ORDNANCE_VELOCITY = -20
  LEFT_START_COORDINATE = -(WIDTH * 2)

  def initialize(screen_width)
    @y = HEIGHT * 2
    @x = x += location
  end

  def location
    #TODO have the ufo hover at a random x value
  end

end
