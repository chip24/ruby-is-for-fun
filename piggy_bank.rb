sum = 0

24.times do |i|
    sum = sum + 500 + sum *0.01
    puts "In month #{i + 1}, the piggy bank has #{sum} dollars."
end