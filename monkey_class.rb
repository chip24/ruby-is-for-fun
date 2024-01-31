class Monkey

    #@states = [:run, :stop]
    #@sample = @states.sample

    attr_reader :state

    def initialize
        states = [:run, :stop]
        @state = states.sample
    end

    def run
        @state = :run
    end

    def my_state
        puts "My state is #{@state}."
    end

    def stop
        @state = :stop
    end
end

#monkey1 = Monkey.new
#puts monkey1.state
#monkey1.run
#puts monkey1.state

#monkey2 = Monkey.new
#p monkey2

monkeys = ["monkey1", "monkey2", "monkey3", "monkey4", "monkey5", "monkey6", "monkey7", "monkey8", "monkey9", "monkey10"]

monkeys_sym = []

monkeys.each do |m|
    m_s = m.to_sym
    monkeys_sym << m_s
end

p monkeys_sym

monkey_objs = []

monkeys_sym.each do |m|
    m = Monkey.new()
    monkey_objs << m
    p m
    #puts "This monkey's state is: #{@state}."
end

p monkey_objs


monkey_objs.each do |m|
    m.my_state()
end




#p monkey1 
#p monkey2
#p monkey3 

#monkeys.each do |monkey|
#   monkey = Monkey.new
#    puts monkey.state
#end
