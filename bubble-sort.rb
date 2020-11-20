def bubble_sort(arr)
  i = 0
  length = arr.length
  while i < length do
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
    end
    i += 1
    if i == length - 1
    i = 0
    length -= 1 
    end
  end
  return arr
  end
  puts bubble_sort([4,3,5,1,2])