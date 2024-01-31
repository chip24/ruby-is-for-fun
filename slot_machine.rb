print "What is your age: "
age = gets.to_i
if age < 18
    puts "Sorry, but you should be at least 18 to play"
    exit
end

balance = 20

def animate_number
    value = rand(0..5)
    0.upto(value) do |num|
        if num < value
            print "#{num}\r"
        #else
            #print num
        end
        sleep 0.3
    end
    puts value
    value
end


loop do
    puts "Press Enter to pull the handle..."
    gets

    x = animate_number
    y = animate_number
    z = animate_number

    puts "Result: #{x} #{y} #{z}"
    
    if x == 0 && y == 0 && z == 0
        balance = 0
        puts "You lost all your money. GAME OVER"
        exit
    elsif x == 1 && y == 1 && z == 1
        balance += 10
        puts "You won $10"
    elsif x == 2 && y == 2 && z == 2
        balance += 20
        puts "You won $20"
    elsif x == 3 && y == 3 && z == 3
        balance += 30
        puts "You won $30"
    elsif x == 4 && y == 4 && z == 4
        balance += 40
        puts "You won $40"
    elsif x == 5 && y == 5 && z == 5
        balance += 50
        puts "You won $50"
    else
        balance -= 2
        puts "You lost $2"
    end

    puts "Your balance is #{balance} dollars"

    if balance <= 0
        puts "GAME OVER.  YOU'RE OUT OF MONEY!"
        exit
    end


end

