class GalagaInvaders


  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new
    @current_level = 0
  end

  def update
    
  end

  def draw
    @ship.draw
  end

  def key_pressed(key)
    if key == 'a'
      @ship.move_left
    if key == 'd'
      @ship.move_right
    if key == 'space'
      @ship.fire_missile

  def show
    while (true) do
      update
      draw
    end
  end

end

GalagaInvaders.new.show
