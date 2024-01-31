puts "Enter your login:"
login = gets.chomp
puts "Enter your pasword:"
pw = gets.chomp

if login == "admin" && pw == "12345"
    puts "Granted access to online banking"
end

