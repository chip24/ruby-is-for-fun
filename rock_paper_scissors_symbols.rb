print "(R)ock, P(aper), (S)cissors?"

player_move = gets.strip.capitalize
puts
computer_move = [:rock, :paper, :scissors].sample
puts "The computer chose #{computer_move.to_s}."

if player_move == "R" && computer_move == :rock
    puts "It's a tie"
end

if player_move == "R" && computer_move == :paper
    puts "Paper covers rock. You lost."
end
if player_move == "R" && computer_move == :scissors
    puts "Rock smashes scissors.  You won!"
end
if player_move == "P" && computer_move == :rock
    puts "Paper covers rock.  You won."
end

if player_move == "P" && computer_move == :paper
    puts "It's a tie."
end
if player_move == "P" && computer_move == :scissors
    puts "Scissors cut paper.  You lose."
end
if player_move == "S" && computer_move == :rock
    puts "Rock smashes scissors.  You lost."
end
if player_move == "S" && computer_move == :paper
    puts "Scissors cut paper.  You won."
end
if player_move == "S" && computer_move == :scissors
    puts "It's a tie."
end
