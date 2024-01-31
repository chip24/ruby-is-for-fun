@cart = {
    soccer_ball: {qty: 2},
    tennis_ball: {qty: 3},
    golf_ball: {qty: 4}
}

inventory = {
    soccer_ball: {available: 2, price_per_item: 100},
    tennis_ball: {available: 1, price_per_item: 30},
    golf_ball: { available: 5, price_per_item: 5}
}

@total = 0


inventory.each do |key, value|
    
    value.each do |k, v|
        
        if k == :price_per_item
           
            if !!@cart[key] == true
                quant = @cart[key][:qty]
                inv_amt = inventory[key][:available]
                puts "inv_amt is #{inv_amt}"
                if quant > inv_amt
                    puts "Please adjust your quantity of #{key}.  There is/are only #{inv_amt} in stock."
                else 
            
                
                    ball_total = v * quant
                    @total += v * quant
                    puts "The total for the #{key}(s) is $#{ball_total}."
                end
            end
    
        end
        

    end

end

puts "The total cost of all balls is $#{@total}."
