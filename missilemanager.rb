class MissileManager
    
    attr_accessor :missiles
    
    def initialize()
        @missiles = []
    end

    def fire(ship)
        missiles << Missile.new(muzzle_location, velocity)  
    end

    def update
        missiles.each { |missile| missile.move }
        missiles.delete_if(&:offscreen?)
    end

    def draw
        missiles.each { |missile| missile.move }
    end

    def muzzle_location
        ship.muzzle_location
    end

    def velocity
        ship.ORDNANCE_VELOCITY
    end

end
