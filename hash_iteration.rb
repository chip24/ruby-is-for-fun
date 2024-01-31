hh = {
    soccer_ball: 410,
    tennis_ball: 58,
    golf_ball: 45
}

hh.each do |k, v|
    puts "The weight of a #{k} is #{v} grams."
end

hh.each do |k, _|
    puts "The warehouse stocks #{k}s."
end

data = {
    soccer_ball: {name: 'soccer ball', weight: 410, qty: 5},
    tennis_ball: {name: 'tennis ball', weight: 58, qty: 10},
    golf_ball: { name: 'golf ball', weight: 45, qty: 15}
}

puts "Warehouse availability: "
#data.each do |k, v|
#    v.each do |key, value|
        #puts "The keys are #{key} and the values are #{value}."
#        print "#{key}: #{value}, "
#    end
#    puts
#end

data.each do |k, v|
    #puts v
    puts "#{v[:name]}, weight #{v[:weight]} grams, quantity: #{v[:qty]} items."
end


