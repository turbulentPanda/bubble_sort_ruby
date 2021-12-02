def bubble_sort(array)
  n = array.length
  while true
    exchange_occurred = false
    for i in 1..(n - 1)
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        exchange_occurred = true
      end
    end
    n = n - 1
    break if not exchange_occurred
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([1, 3, 7, 22, -2, -5, 4, 101, 3, 4, 7, 6, 5, 1000, 953])