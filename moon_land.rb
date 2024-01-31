puts "Let's calculate how many square meters of moon land you want to buy."
print "Enter the width of land you want: "
width = gets.to_i
print "Enter the length of land you want: "
length = gets.to_i
area = width * length
if area < 50
    puts "Your land will cost $1000."
elsif area < 100
    puts "Your land will cost $1500."
else
    puts "Your land will cost $#{area * 25}."
end