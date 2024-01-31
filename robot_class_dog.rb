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
        #if @num % 2 != 0
        self.x += 1
        #end
    end

    def left
        #if @num % 2 != 0
        self.x -= 1
        #end
    end

    def up
        #if @num % 2 == 0
        self.y += 1
        #end
    end

    def down
        #if @num % 2 == 0
        self.y -= 1
        #end
    end

    def label
        '*'
    end

end

class Dog
    attr_accessor :x, :y

    def initialize(options={})
        @x = options[:x] || -12
        @y = options[:y] || 12
    end

    def right
        #if @num % 2 != 0
        self.x += 1
        #end
    end

    def left
        #if @num % 2 != 0
        #self.x -= 1
        #end
    end

    def up
        #if @num % 2 == 0
        #self.y += 1
        #end
    end

    def down
        #if @num % 2 == 0
        self.y -= 1
        #end
    end

    def label
        '@'
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

dogs = Array.new(4) { Dog.new }

arr.concat(dogs)
puts arr

#arr.push(Dog.new(x: -12, y: 12))


loop do
    puts "\e[H\e[2J"
    (12).downto(-12) do |y|
        (-12).upto(12) do |x|
            somebody = arr.find {|somebody| somebody.x == x && somebody.y == y }
            if somebody
                print somebody.label
            else
                print "."
            end
        end
        puts
    end

    game_over = arr.combination(2).any? do |a,b|
        a.x == b.x && a.y == b.y && a.label != b.label
    end

    if game_over
        puts "Game over!"
        exit
    end

    arr.each do |somebody|
        commander.move(somebody)
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
