def bubble_sort(array)
  n = array.length
  loop do
    newN = 0
     for i in (1..n-1)
      if array[i-1] > array[i]
        array[i-1], array[i] = array[i], array[i-1] 
        newN = i
      end
    end
    n = newN
    break if n <= 1
  end
  return array
end

puts bubble_sort([4, 3, 78, 2, 0, 2]).to_s