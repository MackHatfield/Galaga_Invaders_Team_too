include gametimer
class GalagaInvaders


  def initialize
    @caption = "Galaga Invaders"
    @player_ship = Ship.New(x, y)
    @game_timer = game_timer.new()
    
  end

  def update
    @player_ship.move
    @game_timer.tick
  end

  def draw
    @player_ship.draw
    end
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
