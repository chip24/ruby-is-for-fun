
joe = {
    "first_name" => "Joe",
    "last_name" => "Smith",
    "phone" => "(301) 345-9837",
    "email" => "joe@hotmail.com"
}

melissa = {
    "first_name" => "Melissa",
    "last_name" => "Adams",
    "phone" => "(301) 364-8924",
    "email" => "melissa@compuserve.com"
}

sandy = {
    "first_name" => "Sandy",
    "last_name" => "Koh",
    "phone" => "(301) 354-2975",
    "email" => "sandy@aol.com"
}

puts sandy["first_name"]
contacts = [ melissa, joe, sandy]
puts contacts[0].class

contacts.each do |person|
    puts "#{person['first_name']} #{person['last_name']}'s phone number is #{person['phone']} and email address is #{person['email']}"
end

puts sandy.class
print "Enter the first name of the person whose information you need: "
input = gets.chomp.to_sym
#puts name.class
#input = contacts[name]

puts "#{input['first_name']} #{input['last_name']}'s phone number is #{input['phone']} and email address is #{input['email']}"

