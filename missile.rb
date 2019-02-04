class Missile


	def initialize(x, y)
			@X_coordinate = x
			@y_coordinate = y
	end

	def collideWith(object)
		isVisible(false)

	end

	def reachEdge
		isVisible(false)
	end

	def isVisible(status)
		status
	end

end



