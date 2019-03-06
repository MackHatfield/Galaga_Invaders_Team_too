class Alien
  include Placeable

  def initialize(x,y)
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
