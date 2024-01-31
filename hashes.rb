obj = {}

obj[:soccer_ball] = 410
obj[:tennis_ball] = 58
obj[:golf_ball] = 45

#p obj

ball_hash = {soccer_ball: 410,
tennis_ball: 58,
golf_ball: 45}

#p ball_hash

#puts "A golf ball weighs #{obj[:golf_ball]} grams."

moon_ball_hash = obj.clone
p moon_ball_hash
moon_ball_hash.each do |key, value|
    moon_ball_hash[key] = value/6
    #key = key.to_s + "_moon"
end
#moon_ball_hash.each do |key, value|
    key = key.to_s + "_moon"
#end
p moon_ball_hash

def moon_weight_each(hh)
    hh.each do |k,v|
        puts "The weight of a #{k.to_s.gsub("_"," ")} on the moon is #{v} grams."
    end
end

def earth_weight_each(hh)
    hh.each do |k,v|
        puts "The weight of a #{k.to_s.gsub("_"," ")} on the earth is #{v} grams."
    end
end


        
puts "How many soccer balls would you like to buy?: "
@soccer_num = gets.chomp.to_i
puts "How many tennis balls would you like to buy?: "
@tennis_num = gets.chomp.to_i
puts "How many golf balls would you like to buy?: "
@golf_num = gets.chomp.to_i


earth_weight_each(ball_hash)
puts
moon_weight_each(moon_ball_hash)

def weight_total(hh)
    total = 0
    hh.each do |k,v|
        if k == :soccer_ball
            total += v * @soccer_num
        end
        if k == :tennis_ball
            total += v * @tennis_num
        end
        if k == :soccer_ball
            total += v * @golf_num
        end
    end
    puts "The total weight of all of your balls on Earth is #{total} grams."
    puts "The total weight of all of your balls on the moon is #{total/6} grams."
end
=begin
def moon_total(hh)
    total = 0
    hh.each do |k,v|
        if k == :soccer_ball
            total += v * @soccer_num
        end
        if k == :tennis_ball
            total += v * @tennis_num
        end
        if k == :soccer_ball
            total += v * @golf_num
        end
    end
    puts "The total weight of all of your balls on the moon is #{total} grams."
end
=end


weight_total(ball_hash)
#moon_total(moon_ball_hash)
        










