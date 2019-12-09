# frozen_string_literal: true

def bubble_sort_by(array)
  n = array.length
  loop do
    newN = 0
    (1..n -1 ).each do |i|
      result = yield(array[i-1], array[i])      
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

def bubble_sort(array)
  bubble_sort_by(array) { |left, right| left - right }
end
