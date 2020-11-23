# First bubble-sort method for integers
def bubble_sort(arr)
  i = 0
  length = arr.length
  while i < length
    arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    i += 1
    if i == length - 1
      i = 0
      length -= 1
    end
  end
end

# Second bubble-sort method for strings
def bubble_sort_by(arr)
  i = 0
  length = arr.length
  while i < length - 1
    arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]).positive?
    i += 1
    if i == length - 1
      i = 0
      length -= 1
    end
  end
  arr
end
