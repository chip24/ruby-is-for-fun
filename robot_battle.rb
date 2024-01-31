arr1 = Array.new(10,1)
arr2 = Array.new(10,1)
@arrs = [arr1, arr2]

@current_arr = 0 
@game_over = false



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
        @game_over = true

    else
        @game_over = false
    end
end


while !@game_over do
    make_move(@arrs[@current_arr])

    if check_for_game_over
        @game_over = true
        puts "Player #{@current_arr + 1} has lost the game"
        exit
    else
        @current_arr = (@current_arr + 1) % 2
    end
end




=begin
        def first_player
            random_num = rand(0..1)
            if random_num == 0
                puts "Player 1 goes first."
                start_play(@players[0])
            else
                puts "Player two goes first."
                start_play(@players[1])
            end
        end
    


# You could also count the ones this way:
#x = arr.count do |x|
#    x == 1
#end
# or i a single line like this:
# x = arr.count { |x| x == 1 }

=end





