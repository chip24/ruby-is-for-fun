
all_hashes = [
    joe = {
        "first_name" => "Joe",
        "last_name" => "Smith",
        "phone" => "(301) 345-9837",
        "email" => "joe@hotmail.com"
    },

    melissa = {
        "first_name" => "Melissa",
        "last_name" => "Adams",
        "phone" => "(301) 364-8924",
        "email" => "melissa@compuserve.com"
    },

    sandy = {
        "first_name" => "Sandy",
        "last_name" => "Koh",
        "phone" => "(301) 354-2975",
        "email" => "sandy@aol.com"
    }
]

hash_of_all_hashes = {
    joe: {
        "first_name" => "Joe",
        "last_name" => "Smith",
        "phone" => "(301) 345-9837",
        "email" => "joe@hotmail.com"
    },

     melissa: {
        "first_name" => "Melissa",
        "last_name" => "Adams",
        "phone" => "(301) 364-8924",
        "email" => "melissa@compuserve.com"
    },

    sandy: {
        "first_name" => "Sandy",
        "last_name" => "Koh",
        "phone" => "(301) 354-2975",
        "email" => "sandy@aol.com"
    }
}


#puts hash_all_hashes

contacts = [ melissa, joe, sandy]
#puts contacts[0].class

contacts.each do |person|
    puts "#{person['first_name']} #{person['last_name']}'s phone number is #{person['phone']} and email address is #{person['email']}"
end

#input = "Koh"
print "Type the last name of the person whose contact information you need: "
input = gets.chomp.capitalize
#hah_values =  hash_all_hashes.values
#p hah_values.include?(input)

person =[]

hash_of_all_hashes.each do |key, value|
    value.each do |key2, value2|
        if value2 == input

        person << value
        end
    end
end
puts person.class
puts "#{person[0]["first_name"]} #{person[0]["last_name"]}'s phone number is #{person[0]["phone"]} and email address is #{person[0]["email"]}"
#p person
#puts "#{person["first_name"]} #{person["last_name"]}" 





#people = []

#contacts.each do |person|
 #   str = person["first_name"].to_s
  #  people << str
#end


#if people.include?(input)
#    puts "#{input} is in people array and #{input}'s last name is #{contacts"



    
    #"#{contacts['first_name']} #{person['last_name']}'s phone number is #{person['phone']} and email address is #{person['email']}"
