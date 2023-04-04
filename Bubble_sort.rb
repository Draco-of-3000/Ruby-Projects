require 'pry-byebug'

def Bubble_sort(array)
    swapped = true
    while swapped do
      swapped = false
      (array.length - 1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
    end
    array
  end  

puts Bubble_sort([4,3,78,2,0,2])