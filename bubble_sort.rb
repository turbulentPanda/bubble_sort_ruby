# frozen_string_literal: true

def bubble_sort(array)
  n = array.length
  loop do
    exchange_occurred = false
    (1..(n - 1)).each do |i|
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        exchange_occurred = true
      end
    end
    n -= 1
    break unless exchange_occurred
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([1, 3, 7, 22, -2, -5, 4, 101, 3, 4, 7, 6, 5, 1000, 953])
