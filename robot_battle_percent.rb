@arr1 = Array.new(10,100)
@arr2 = Array.new(10,100)

def attack(arr)
    sleep 1
    i = rand(0..9)
    percent = rand(30..100)
    if arr[i] != 0
        arr[i] -= percent
        puts "Robot at index #{i} has #{arr[i]} life left."
        if arr[i] <= 0
            arr[i] = 0
        end

    else
        puts "Missed at index #{i}"
    end
    sleep 1
end

def victory?
    robots_dead1 = @arr1.count {|x| x == 0}
    robots_dead2 = @arr2.count {|x| x == 0}

    if robots_dead1 == 10
        puts "Team 2 wins with #{10 -robots_dead2} robots left"
        return true
    end

    if robots_dead2 == 10
        puts "Team 1 wins with #{10- robots_dead1} robots left"
        return true
    end
    
    false
end

def stats
    cnt1 = @arr1.count {|x| x != 0}
    cnt2 = @arr2.count {|x| x != 0}
    puts "Team 1 has #{cnt1} robots left"
    p "Team 1's array is #{@arr1}"
    puts "Team 2 has #{cnt2} robots left"
    p "Team 2's array is #{@arr2}"
end

loop do
    puts "Team 1 is going to attack..."
    attack(@arr2)
    exit if victory?
    stats
    sleep 1
    puts 

    puts "Team 2 is going to attack..."
    attack(@arr1)
    exit if victory?
    stats
    sleep 1
    puts
end


