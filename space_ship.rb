def launch(options = {})
    astronauts = [:belka, :strelka]
    angle = options[:angle] || 90
    crew = options[:crew] || astronauts
    delay = options[:delay] || 5

    crew_arr = []
    if crew.class == Symbol
        crew_arr << crew.to_s.capitalize
    else 
        crew.each do |n|
            crew_arr << n.to_s.capitalize
        end
    end
    p crew_arr
    
    #puts angle, crew, delay
    print "Countdown has begun:   "
    while delay > 0
        print "#{delay}..."
        sleep 1
        delay -= 1
    end
    puts
    puts "The missile has been launched into space at an angle of #{angle} degrees with a crew of " + crew_arr.map{|n| n.to_s.capitalize}.join(" and ") +"."



end

launch(delay: 4, angle: 54, crew: :belka)
launch(angle: 180)