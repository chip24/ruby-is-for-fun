print "Formatting hard drive"
10.times do
    puts "/,=,+,|."
    sleep rand(0.05..0.5)
end

def get_number(what)
    print "Enter #{what}: "
    gets.to_i
end

age = get_number('age')
salary = get_number('salary')
rockets = get_number('number of missiles')