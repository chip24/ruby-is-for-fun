str = 'the quick brown fox jumps over the lazy dog'
arr = str.split(' ')
p arr

#hh = {}
hh = Hash.new(0)
arr.each do |word|    
    hh[word] += 1
end

p hh

letter_arr = str.split("")
p letter_arr

letter_hh = Hash.new(0)

letter_arr.each do |letter|
    if letter != " "
    letter_hh[letter] += 1
    end
end


p letter_hh