module Damageable

	def damaged
		hit_points -= DAMAGE
	end

	def hit?
		#some behavior
	end