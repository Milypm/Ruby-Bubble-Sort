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
  arr
end
puts bubble_sort([4, 3, 5, 1, 2])

# Second bubble-sort method for strings
def bubble_sort_by(arr)
  i = 0
  length = arr.length
  while i < length - 1
    arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]).positive?
    i += 1
  end
  arr
end

a = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
puts a
