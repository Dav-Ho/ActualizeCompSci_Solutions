def merge(arr1, arr2)
  length = (arr1.length + arr2.length)
  arr3 = []
  i = 0
  while (i < length)
    if (arr1[0] != nil && arr2[0] != nil)
      arr1[0] < arr2[0]  ? arr3 << arr1.shift : arr3 << arr2.shift
    else
      arr1[0].nil? ? arr3 << arr2.shift : arr3 << arr1.shift
    i += 1
    end
  end
    arr3.compact
end
def halve_and_merge(array)
  return array if array.length == 1
  array_1 = array[0..(array.length / 2) - 1]
  array_2 = array[(array.length / 2)..-1]
  p merge(halve_and_merge(array_1), halve_and_merge(array_2))
end

halve_and_merge([6,1,0,9,4,7,2,8])

=begin
arr = [6, 1, 0, 9, 4, 7, 2, 8] --> merge_sort breakdown.
merge(halve_and_merge([6,1,0,9], halve_and_merge[4,7,2,8])
merge(halve_and_merge([6,1,0,9])
merge(halve_and_merge([6,1], halve_and_merge[0,9])
merge([6], [1]) # 1comp 2pushes
merge([1,6], halve_and_merge[0,9])
merge([0], [9]) # 1comp 2pushes
merge([1,6], [0,9]) #3comp 4 pushes

merge([0,1,6,9], halve_and_merge[4,7,2,8])
merge(halve_and_merge[4,7], halve_and_merge[2,8])
merge([4], [7]) # 1comp 2pushes
merge([4,7], halve_and_merge[2,8])
merge([2], [8]) # 1comp 2pushes
merge([4,7], [2,8])#3comp 4 pushes
merge([0,1,6,9], [2,4,7,8])#7comp 8pushes
tot_comp: 17, tot_pushes: 24, tot_steps: 41
=end
