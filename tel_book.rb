arr = []
loop do
    print "Type name and number (empty string to finish): "
    entry = gets.chomp
    break if entry.empty?
    arr << entry
end

puts "Your phone book:"

sorted_arr = arr.sort

sorted_arr.each do |element|
    puts element
end