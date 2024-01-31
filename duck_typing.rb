class Duck
    def walk
    end
    def quack 
    end
end

class Dog
    def walk
    end

    def quack
    end
end

class DuckCommander
    def command(who)
        who.walk
        who.quack
    end
end

duck = Duck.new
dog = Dog.new

dc = DuckCommander.new
p dc.command(duck)
p dc.command(dog)




