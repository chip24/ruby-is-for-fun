@cart = {
    soccer_ball: {qty: 2},
    tennis_ball: {qty: 3},
    golf_ball: {qty: 4}
}

# = @cart.keys
#p cart_keys

inventory = {
    soccer_ball: {available: 2, price_per_item: 100},
    tennis_ball: {available: 1, price_per_item: 30},
    golf_ball: { available: 5, price_per_item: 5}
}
#puts cart

#p @cart[:soccer_ball][:qty]
#p @cart
@total = 0

inventory.each do |key, value|
    #puts "The first iteration keys are #{key}"
    #puts "The first interation values are #{value}."
    #total = 0
    value.each do |k, v|
        #p "The second iteration keys are #{k}."
        #p "The second iteration values are #{v}."
        if k == :price_per_item
            #puts "Trying to access 'key' in second iteration: #{key}"
            #puts "The class of key is #{key.class}"
            if !!@cart[key] == true
                quant = @cart[key][:qty]
                inv_amt = inventory[key][:available]
                puts "inv_amt is #{inv_amt}"
                if quant > inv_amt
                    puts "Please adjust your quantity of #{key}.  There is/are only #{inv_amt} in stock."
                else 
            
                #puts "The quantity is #{quant}"
                    ball_total = v * quant
                    @total += v * quant
                    puts "The total for the #{key}(s) is $#{ball_total}."
                end
            end
    
        end
        

    end

end

puts "The total cost of all balls is $#{@total}."
