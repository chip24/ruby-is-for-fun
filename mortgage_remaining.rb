mortgage = 500000

30.times do |i|
    sum = mortgage - 16666 * (i+1)
    puts "The remainder after year #{i+1} is #{sum} and you will owe #{(sum * 0.04).round(2)} in interest."
end

puts "Launching missiles..."
5.downto(1) {|i| puts "#{i} seconds left"}
puts "Boom!"

puts "Launching missiles..."
5.downto(0) do |i|
    puts "#{i} seconds left."
end
puts "Boom!"

50.upto(100) do |i| 
    if i % 2 == 0
        puts "#{i} is even"
    else
        puts "#{i} is odd"
    end
end

