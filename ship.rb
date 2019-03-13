class Ship
  include Placeable
  
  WIDTH = 100
  HEIGHT = 100
  DEFAULT_VELOCITY = 5
  ORDNANCE_VELOCITY = -10

  attr_accessor :x, :y, :location, :show

  def initialize(args)
    @location = Vector.new(args[:x], args[:y])
    @show = true
  end

  def ordnance_velocity
    ORDNANCE_VELOCITY
  end

  def muzzle_location
    Vector.new(x, top_edge)
  end

  def move_left
    move(-DEFAULT_VELOCITY)
  end

  def move_right
    move(DEFAULT_VELOCITY)
  end

  def draw
    puts self
  end

  def to_s
    "✈️ (#{x}, #{y})"
  end

  private

  def move(delta)
    self.x += delta
  end

  def top_edge
    y - half_height
  end

  def half_height
    HEIGHT / 2
  end

end

Vector = Struct.new(:x, :y)