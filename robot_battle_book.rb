@arr1 = Array.new(10,1)
@arr2 = Array.new(10,1)

def attack(arr)
    sleep 1
    i = rand(0..9)
    if arr[i] == 1
        arr[i] = 0
        puts "Robot at index #{i} has been destroyed."
    else
        puts "Missed at index #{i}"
    end
    sleep 1
end

def victory?
    robots_left1 = @arr1.count {|x| x == 1}
    robots_left2 = @arr2.count {|x| x == 1}

    if robots_left1 == 0
        puts "Team 2 wins with #{robots_left2} robots left"
        return true
    end

    if robots_left2 == 0
        puts "Team 1 wins with #{robots_left1} robots left"
        return true
    end
    
    false
end

def stats
    cnt1 = @arr1.count {|x| x == 1}
    cnt2 = @arr2.count {|x| x == 1}
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


