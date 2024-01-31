users = [
    {first: "John", 
    last: "Smith", 
    address: {
        city: "San Francisco", 
        country: "US",
        street: {
            line1: "555 Market Street",
            line2: 'apt 123'
        }
        }
    },
    {first: "Pat", last: "Roberts", address: {country: "US"}},
    {first: "Sam", last: "Schwartzman"}
]

#users.each do |user|
    #puts user[:address][:city]
#end
puts users[0][:address][:city]
puts users[1][:address][:city]
#puts users[2][:address][:city]

users.each do |user|
    if user[:address] && user[:address][:street]
        puts user[:address][:street][:line1]
    end
end

users.each do |user|
    puts user.dig(:address, :street, :line1)
end

hh = {login: 'root', password: '123456'}
puts hh.has_key?(:password)

