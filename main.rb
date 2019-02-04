class GalagaInvaders

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new
  end

  def update
    # ...
  end

  def draw
    @ship.draw
  end

  def key_pressed(key)
    if key == 'a'
      @ship.moveLeft
    if key == 'd'
      @ship.moveRight
    if key == 'space'
      @ship.fireMissile

  def show
    while (true) do
      update
      draw
    end
  end

end

GalagaInvaders.new.show
