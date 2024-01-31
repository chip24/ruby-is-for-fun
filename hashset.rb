require 'set'

def f(str)
    set = Set.new

    str.each_char do |c|
        c.downcase
        if c >= 'a' && c <= 'z'
            set.add(c)
        end
    end
    set.size == 26
end

puts f('the quick brown fox jumps over the lazy dog')