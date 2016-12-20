class SortableArray
  attr_reader :array
  def initialize(array)
    @array = array
  end

  def partition

    # We always choose the rightmost element as the pivot
    left_pointer = 0
    pivot_position = -1
    pivot = @array[pivot_position]
    # We start the right pointer immediately to the left of the pivot
    pivot_position -= 1
    right_pointer = pivot_position
    while true do
      while @array[left_pointer] < pivot do #left pointer keeps going right until it reaches
        left_pointer += 1                   #value == or > pivot
      end
      while @array[right_pointer] > pivot do #right pointer keeps going left until it reaches
        right_pointer -= 1                   #value == or < pivot
      end
      if left_pointer >= (@array.length + right_pointer)
        swap(left_pointer, -1)
        break
      else
        swap(left_pointer, (@array.length + right_pointer))
      end
    end
    # As a final step, we swap the left pointer with the pivot itself
    #swap(left_pointer, pivot_position)
    # We return the left_pointer for the sake of the quicksort method
    # which will appear later in this chapter
    swap(-2, -1)
    @array
  end
  def swap(pointer_1, pointer_2)
    # YOU IMPLEMENT THIS!
    left_point_value = @array[pointer_1]
    right_point_value = @array[pointer_2]
    @array[pointer_1] = right_point_value
    @array[pointer_2] = left_point_value
  end
end
arr = SortableArray.new([0,5,2,1,6,3])
p arr.partition #[0, 1, 2, 3, 5, 6]
