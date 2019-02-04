class GalagaInvaders

  def initialize
    @caption = "Galaga Invaders"
    @player_ship = Ship.New(x, y)
  end

  def update
    @player_ship.move
  end

  def draw
    @player_ship.draw
    end

  def show
    while (true) do
      update
      draw
    end
  end

end

GalagaInvaders.new.show
