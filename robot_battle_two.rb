#I troed to remove all of the @'s from robot_battle.rb to see if it would work, but it wouldn't.  However, the @ before game_over doesn't seem to be necessary

arr1 = Array.new(10,1)
arr2 = Array.new(10,1)
@arrs = [arr1, arr2]

@current_arr = 0 
game_over = false



def make_move(arr)
    
    i = rand(0..9)

    if arr[i] == 1
        arr[i] = 0
        puts "Robot at index #{i} destroyed."
    else
        puts "Oops, missed that!"
    end

    x = 0
    arr.each do |element|
        if element == 1
            x += 1
        end
    end

    puts "Player #{@current_arr + 1}'s array has #{x} ones left."
    p arr
    check_for_game_over
end

def check_for_game_over
    if @arrs[@current_arr].count(0) == 10
        game_over = true

    else
        game_over = false
    end
end


while !game_over do
    make_move(@arrs[@current_arr])

    if check_for_game_over
        game_over = true
        puts "Player #{@current_arr + 1} has lost the game"
        exit
    else
        @current_arr = (@current_arr + 1) % 2
    end
end