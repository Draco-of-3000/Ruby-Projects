def Bubble_sort(array)
    # Set a flag to true indicating that the array is unsorted
    swapped = true

    while swapped do
      # Set swapped flag to true at the beginning of each iteration
      swapped = false
      (array.length - 1).times do |i|
        # If the current element is greater than the next element
        if array[i] > array[i + 1]
          # Swap the elements and set the swapped flag to true
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
    end
    # Return the sorted array
    array
end  

