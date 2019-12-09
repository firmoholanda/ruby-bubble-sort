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

def bubble_sort_by(array)

  n = array.length
  loop do
    newN = 0
    
    for i in (1..n-1)
      result = yield(array[i-1],array[i])      
      if result > 0
        array[i-1], array[i] = array[i], array[i-1] 
        newN = i
      end
    end
    n = newN
    break if n <= 1
  end
  return array
end

# puts bubble_sort([4, 3, 78, 2, 0, 2]).to_s
puts bubble_sort_by([4, 3, 78, 2, 0, 2]) { |firstV, secondV| firstV - secondV }
# puts bubble_sort_by([4, 3, 78, 0, 100, 20]) { |firstV, secondV| firstV - secondV }