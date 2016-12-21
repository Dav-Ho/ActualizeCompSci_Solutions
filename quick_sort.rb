class SortableArray
  attr_reader :array
  def initialize(array)
    @array = array
  end

  def partition
    left_pointer = 0
    pivot_position = -1   # Variable used to set the rightmost element as the pivot.
    pivot = @array[pivot_position]  # Set the right pointer immediately to the left of the pivot

    pivot_position -= 1 # pivot_position becomes -2 to create the right_pointer.
    right_pointer = pivot_position
    while true do
      while @array[left_pointer] < pivot do #left pointer keeps going right until it is false
        left_pointer += 1                   #value == or > pivot
      end
      while @array[right_pointer] > pivot do #right pointer keeps going left until it is false
        right_pointer -= 1                   #value == or < pivot
      end
      if left_pointer >= (@array.length + right_pointer)
        swap(left_pointer, -1)
        break
        # Condition set once both pointers are set on the same value or if the left_pointer is greater.
      else
        swap(left_pointer, (@array.length + right_pointer))
        # If not... Swap with pointers once both pointers conditions are false.
      end
    end
      # The swap method is created to switch the positions of the pointers.
      # Once both pointers are the same value. Swap method is used on the left_pointer
      # and the pivot, last index (-1), to complete the partition. 
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
