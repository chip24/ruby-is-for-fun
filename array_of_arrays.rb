arr1 = Array.new(10,[])
element = arr1[4]
element.push('something')
puts arr1.inspect

arr2 = Array.new(10, 'something')
element = arr2[4]
element.upcase!
puts arr2.inspect

arr3 = Array.new(10, 123)
arr3[4] = 444
p arr3

arr4 = Array.new(10, 'something')
p arr4
arr4[0].upcase!
p arr4

arr5 = Array.new(10) {'something'}
p arr5
arr5[0].upcase!
p arr5

arr = Array.new(10) { Array.new(10, 0)}
p arr

arr6 = Array.new(4) { Array.new(10, 0)}
p arr6

arr7 = Array.new(2) { Array.new(3,'something')}
p arr7

arr8 = Array.new(5) {Array.new(4, rand(1..5))}
p arr8

arr9 = Array.new(4) {Array.new(5, rand(1..5))}
p arr9

arr10 = Array.new(5) {Array.new(4, rand(0..9))}
p arr10

arr11 = [%w(a b c), %w(d e f), %w(g h i) ]
p arr11

0.upto(2) do |j|
    print arr11[j]
end

0.upto(2) do |j|
    0.upto(2) do |i|
        print arr11[j][i]
    end
end

arr11.each do |row|
    row.each do |value|
        print value
    end
end
puts 
print arr11[0][0],arr11[1][1],arr11[2][2],arr11[0][2],arr11[1][1],arr11[2][0]
puts

arr12 = Array.new(3) {Array.new(3){'something'}}
p arr12
arr12[2][2].upcase!
p arr12