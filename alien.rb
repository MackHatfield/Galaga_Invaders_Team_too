class Alien
  def initialize(x,y)
    @x = x
    @y = y
    @show = true
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
