class UFO
  include Placeable
  attr_accessor :location
  
  WIDTH = 200
  HEIGHT = 100
  DEFAULT_VELOCITY = 5
  ORDNANCE_VELOCITY = -20
  LEFT_START_COORDINATE = -(WIDTH * 2)

  def initialize(args)
    @x = LEFT_START_COORDINATE
    @y = HEIGHT * 2;
    @location = Vector.new(args[:x], args[:y])
    place_on_screen(x,y)
  end

  def location
    #TODO have the ufo hover at a random x value
  end

end
