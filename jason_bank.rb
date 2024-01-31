client_hash = {
       client: 'Mark Zuck',
       balance_usd:  123.45,
       show_deposits: false,
       transactions: [
        { description:"McDonalds", type: :withdrawal, amount: 40 },
        { description: "selling ads", type: :deposit, amount: 1000 },
        { description: "selling user data", type: :deposit, amount: 300 },
        { description: "lawyer", type: :withdrawal, amount: 200 },
        { description: "lunch with friends", type: :withdrawal, amount: 300 }
       ]
}

def show_info(hh)
    puts "#{hh[:client]} has a bank balance of $#{hh[:balance_usd]}."
    hh[:transactions].each do |k|
            #puts "K is #{k}."
            #puts "V is #{v}."
            #k.each do |key, value|
                #puts key
                #puts value
                #if value == :withdrawal
                 #   puts "Withdrawal for #{key[:amount]}"
        if hh[:show_deposits] == true
            puts "#{k[:type]} for #{k[:description]} in the amount of $#{k[:amount]}"
        else
            if k[:type] == :withdrawal
                puts "#{k[:type]} for #{k[:description]} in the amount of $#{k[:amount]}"
            end

        end
    end


end




show_info(client_hash)