
# Player is an 'abstract class' in that you do not actual create any objects of it directly.  You just use it indirectly and create instances of the Robot, Dog, and Human classes. 
class Player
    attr_accessor :x, :y

    def initialize(options = {})
        @x = options[:x] || 0
        @y = options[:y] || 0
    end

    def right
        self.x =+ 1
    end

    def left
        self.y -= 1
    end

    def up
        self.y += 1
    end

    def down
        self.y -= 1
    end

    def label
    end
end

class Robot < Player

    def label
        '*'
    end
end

class Dog < Player

    def up
    end

    def left
    end

    def label
        '@'
    end
end

class Human  < Player

    def label
        'H'
    end
end



