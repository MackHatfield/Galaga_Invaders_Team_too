class Alien
  include Placeable
  attr_accessor :location
  def initialize(args)
    @location = Vector.new(args[:x], args[:y])
    place_on_screen(x,y)
  end

  def move(x,y)
    #TODO move alien around
  end

  def shoot()
    #TODO alien shoots missiles
  end

  def die()
    @show = false
  end
end
