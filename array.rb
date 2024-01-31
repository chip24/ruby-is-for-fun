arr = ["San Francisco", "Moscow", "London", "New York"]

p arr.size
p arr.sort

arr.each do |word|
    puts "The word '#{word}' has #{word.size} letters."
end

arr = ['one', 'two', 'three']

one_arr = Array.new(10, 1)
p one_arr
#puts one_arr

num_arr = %w(one two three four five)
p num_arr
puts num_arr.size
puts num_arr[4]
num_arr[1] = 'whatever'
p num_arr
num_arr.each do |word|
    puts word
end

symbol_arr = %i(one two three)
p symbol_arr




