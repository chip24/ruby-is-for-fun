hh1 = {
    "books": [
    {
        "id": 1,
        "name": "Tom Sawyer and Huckleberry Finn",
    },
    {
        "id": 2,
        "name": "Vingt mille lieues sous les mers",
    }
    ]
}

hh2 = 
{
    "books": {
        "1":{
            "name": "Tom Sawyer and Huckleberry Finn"
        },
        "2": {
            "name": "Vingt mille lieues sous les mers"
        }
    }
}

hh1.each do |k,v|
    #puts "The keys are #{k} and the values are #{v}."
    v.each do |key,value|
        puts "The second keys are #{key} and the second values are #{value}."
    end
end 
hh2.each do |k,v|
    #puts "The keys are #{k} and the values are #{v}."
    v.each do |key,value|
        puts "The second keys are #{key} and the second values are #{value}."
    end
end

hh1[:books]  << {"id": 3, "name": "Moby Dick"}
p hh1

hh2[:"books"][:"3"] = {"name": "Moby Dick"}
p hh2