def binary_search(array, value, from=0, to=0)
  if to == 0
    to = array.count - 1  # This takes the last value
  end

  mid = (from + to) / 2  # (0 + 10) / 2 = 5

  if value < array[mid]
    return binary_search array, value, from, mid - 1
  elsif value > array[mid]
    return binary_search array, value, mid + 1, to
  else
    return "#{array[mid].to_s} is located at index #{mid}"
  end
end

puts binary_search([1,2,3,4,5,6,7,8,9,10], 3)

#binary_search
#1st loop (from=0, to=0) mid = 4;
#2nd loop (from=0, to=3) mid = 1;
#3nd loop (from=1, to=3) mid = 2; returns else statement because the arr[mid] equals the value.   
