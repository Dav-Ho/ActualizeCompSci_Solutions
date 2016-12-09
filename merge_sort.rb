def merge_sort(array1, array2, new_array)
  if array1.empty?
    new_array << array2[0]
    return new_array
  elsif array2.empty?
    new_array << array1[0]
    return new_array
  else
    array1[0] < array2[0] ?
    new_array << array1.shift : new_array << array2.shift
    merge_sort(array1, array2, new_array)
  end
end

p merge_sort([1, 3, 5], [2, 4, 6], [])
