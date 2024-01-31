p [].empty?

p [11,22,33].size
p [11,22,33].size

str = 'something'
p str.size
p str.length

hh = {a: 1, b: 2}
p hh.size
p hh.length

p [0,0,1,1,0,0,1,0].count {|x| x == 0}
p [11,22,33,44,55].size

p [1,2,3,5,8].include?(3)

arr = [[30,1], [25,0], [64,1], [64,0], [33,1]]
p arr.select {|element| element[0] == 64 && element[1] == 1 }
p arr.select {|element| element[1] == 1}
p arr.select {|element| element[1] == 0}
p arr.reject {|element| element[0] >= 30 && element[1] == 1}

p [11,22,33,44,55].take(2)
p [false, false, false, true, false].any? {|element| element == true }
p [false, false, false, true, false].find_index {|element| element == true }
p [20,34,65,23,18,44,32].all? {|element| element >= 18 }
p [20,34,65,23,18,44,32].pop
p [20,34,65,23,18,44,32].push(5555)