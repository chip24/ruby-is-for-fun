puts "Launching missiles..."
5.downto(0) do |i|
    puts "#{i} seconds left"
    sleep 1
end
sleep 1
puts "Boom!"