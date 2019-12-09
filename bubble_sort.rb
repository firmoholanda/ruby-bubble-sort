def bubble_sort(array)
  n = array.lenght

  loop do
    newN = 0
  
    for i = 1 in n-1 do 
      if array[i-1] > a[i]
        array[i], array[i + 1] = array[i + 1], array[i] 
        newN = i
      end
    end
    n = newN
  break if n <= 1
end

array = [1,3,5,2,4]

bubble_sort(array)