arr = Array.new(100){'something'}
p arr

p arr[0].__id__
p arr[1].__id__

arr1 = Array.new(100) {:something}
p arr1

p arr1[0].__id__
p arr1[1].__id__

