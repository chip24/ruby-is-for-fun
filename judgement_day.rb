@humans = 15
@machines = 15

def luck?
    rand(0..1) == 1
end

def boom
    diff = rand(1..7)

    if luck?
        @machines -= diff
        puts "#{diff} machines destroyed"
        puts "\u{1f4a5}" * diff
        random_sleep

    else
        @humans -= diff
        puts "#{diff} humans killed"
        puts "\u{2620}" * diff
        random_sleep
    end
end

def replenish
    extra = rand(1..2)
    luck = rand(1..2)
    if luck == 1
        @machines += extra
        
        puts "#{extra} new machines deployed."
        puts "\u{1f916}" * extra
        sleep(2)
    else
        @humans += extra
        
        puts "#{extra} more human soldiers deployed."
        puts "\u{1f9d4}" * extra
        sleep(2)
    end
end

def random_city
    dice = rand(1..5)
    if dice == 1
        'San Francisco'
    elsif dice == 2
        'Moscow'
    elsif dice ==3
        'Beijing'
    elsif dice == 4
        'London'
    else
        'Seoul'
    end
end

def random_sleep
    sleep rand(0.3..1.5)
end

def stats
    puts "#{@humans} humans and #{@machines} machines are left"
end

def event1
    puts "Missile launched against #{random_city}"
    random_sleep
    boom
    replenish
end

def event2
    puts "Nuclear weapon used against #{random_city}"
    random_sleep
    boom
    replenish
end

def event3
    puts "Group of soldiers have breached defense in #{random_city}"
    random_sleep
    boom
    replenish
end

def check_victory?
    if @humans <= 0 || @machines <= 0
        true
    else
        false
    end
end

loop do
    if check_victory?
        if @humans > @machines
            puts "The humans have won with #{@humans} remaining!"
        elsif @machines > @humans
            puts "The machines have won with #{@machines} remaining!"
        end

    exit
    end

    dice = rand(1..3)
    if dice == 1
        event1
    elsif dice == 2
        event2
    elsif dice == 3
        event3
    end

    stats
    random_sleep
end

#loop do
#    if check_victory?
#        exit
#    end
#end

