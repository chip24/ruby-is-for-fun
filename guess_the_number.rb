number = rand(1..1000)
print "Hi.  I picked a number from 1 to 1000, try to guess it: "

loop do
    input = gets.to_i

    if input == number
        puts "You guessed it!"
        exit
    

    elsif input > number
        print "Nope, your guess was too high. Try again: "
    else
        print "Nope, your guess was too low.  Try again: "
    end
end
