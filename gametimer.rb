class GameTimer
    @attr_getter :ticks
    def initialze()
        @ticks = 0
    end

    def tick()
        @ticks += 1
    end

    def reset()
        @ticks = 0
    end
end