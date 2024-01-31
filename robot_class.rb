class Robot
    attr_accessor :x, :y
    
    @@count = 0
    def initialize(options = {})
        @@count += 1
        @x = options[:x] || 0
        @y = options[:y] || 0
        @num = options[:num] || @@count
    end

    def right
        if @num % 2 != 0
            self.x += 1
        end
    end

    def left
        if @num % 2 != 0
            self.x -= 1
        end
    end

    def up
        if @num % 2 == 0
            self.y += 1
        end
    end

    def down
        if @num % 2 == 0
            self.y -= 1
        end
    end

end

class Commander
    def move(who)
        m = [:right, :left, :up, :down].sample
        who.send(m)
    end
end

commander = Commander.new

#x = 0
arr = Array.new(10) { Robot.new }

loop do
    puts "\e[H\e[2J"
    (12).downto(-12) do |y|
        (-30).upto(30) do |x|
            found = arr.any? {|robot| robot.x == x && robot.y == y }
            if found
                print "*"
            else
                print "."
            end
        end
        puts
    end
    arr.each do |robot|
        commander.move(robot)
    end
    sleep 0.5
end



#robot1 = Robot.new
#robot1.up
#robot1.up
#robot1.up
#robot1.right
#puts "x = #{robot1.x}, y = #{robot1.y}"    

#arr.each do |robot|
#    m = [:right, :left, :up, :down].sample
#    robot.send(m)
#end
#p arr
