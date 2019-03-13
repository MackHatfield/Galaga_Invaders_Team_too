require_relative 'ship'
require_relative 'missilemanager'
class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(x: WIDTH / 2, y: HEIGHT - (HEIGHT / 2))
    @missile_manager = MissileManager.new()
  end

  def update
    # if ships remaining
    if ships.remaining
      ship.show
      gametimer.increase
      forts.show
      
      if gametimer.time_for_aliens_appear
        aliens_manager.launch_squad
      end
  
      if aliens_manager.in_formation
        aliens_manager.attack
      end
  
      if gametimer.time_for_ufo_to_appear
        ufo.launch
      end
  
      missile_manager.move
      aliens_manager.move
      ufo.move

    end

    

      # show player ship
      # show forts
      # alien squad(s) are entering screen
      # have aliens move into formation
      # aliens start attacking
      #   if missile collission with player ship
            # set player ship to destroyed
          # if missile colission with alien
            # set alien to destroyed
            # increase game score by arbitrary amount
      # after set period of time, alien formation changes to "dive bomb" pattern
        # continue checking for collisions between missiles and player ship/aliens, forts etc.
      # after level time has reached the trigger point for a UFO, have UFO move onto the screen
        # check for collsions between player ship and UFO missiles
    
      

  end

  def draw
    ship.draw
    fort.draw
    aliens.draw
    ufo.draw
    missile_manager.draw
    player_score.draw
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
    if key == " "
      missile_manager.fire(ship)
    end
  end
end

GalagaInvaders.new.show
