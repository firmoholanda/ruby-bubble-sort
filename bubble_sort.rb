def bubble_sort(array)
  n = array.length
  begin
    newN = 0
     (0..n-1).each do |i|
      #puts i.to_s + " interation"
      if array[i-1] > array[i]
        array[i-1], array[i] = array[i], array[i-1] 
        newN = i
      end
    end
    n = newN
  end while n <= 1
  return array
end

array = [2, 3, 100, 3, 5, 4, 10, 7]

puts bubble_sort(array)