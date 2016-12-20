def insertion_sort(arr)
for j in 1..(arr.length - 1) [4,2,7,1,3]
key = arr[j] # arr[1] - arr[arr.length-1]
i = j - 1
while i >= 0 && arr[i] > key  # i = 1 - 1  && 4 > 2
  arr[i + 1] = arr[i]
  i -= 1 # i becomes a negative number preventing the while loop from proceding.
end
  arr[i + 1] = key
end
puts arr
end

arr = [4, 2, 7, 1, 3]
insertion_sort(arr)
