# The goal of bubble sort is to organize the values from ascending order.

a = [50, 60, 70, 20, 30, 10]
$count = [] #--> global variable can access from inside method

def bubble_sort(a)
something_changed = false
swap = 0
comparison = (a.length - 1).downto(1).map{|num| num}
   # [5,4,3,2,1]
a[0...-1].each_with_index do |num, i|
  if a[i] > a[i + 1]
    a[i], a[i + 1] = a[i + 1], a[i]
    something_changed = true
    swap += 1
  end
end

  # There are two loops that are doing comparison of the intial index for the rest of the index of the array.
  # If the intial value is great the the index being compared, it will swap with them.
  # the variable something_changed is changed to true to allow recursion to reuse the function.

  bubble_sort(a)  if something_changed
  $count << swap
  swap_count = $count.inject(:+)
  comp_result = comparison.inject(:+)
  return [
  "Array is sorted in #{swap_count} swaps.",
  "First Element: #{a.first}",
  "Last Element: #{a.last}",
  "Comparison: #{comp_result}"
  ]
end
puts bubble_sort(a)
