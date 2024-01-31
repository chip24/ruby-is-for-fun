class Car
    attr_accessor :state
    
    def initialize
        @state = :closed
        puts "hello from construtor!"
    end
#since we added attr_accessor :state, we don't need the following three methods anymore and we can update the state of the car using the method ".state" at the end of the instance of the Class (i.e. car1, car2, etc.)
    #def open
    #    @state = :open   
    #end

    #def close
    #    @state = :closed

    #def state
    #    @state
    #end

    def how_are_you
        puts "My state is #{@state}."
    end
end

car1 = Car.new
car1.state = :open
car1.how_are_you
p car1

car2 = Car.new
car2.state = :broken
car2.how_are_you
p car2

