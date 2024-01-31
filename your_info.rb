puts "Your name?"
name = gets.chomp
puts "Your age?"
age = gets.to_i
puts "Your city?"
city = gets.chomp
puts "=" * 80
puts "#{name} is #{age} years old (which is #{age * 12} months old) and lives in #{city}."