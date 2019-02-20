require_relative 'ship'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship

  def initialize
    @caption = "Galaga Invaders"
    @player_ship = Ship.New(WIDTH, HEIGHT)
  end

  def update
    # @player_ship.move
  end

  def update
    
  end

  def draw
    ship.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp)
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    end
    if key == 'd'
      ship.move_right
    end
  end
end

GalagaInvaders.new.show
