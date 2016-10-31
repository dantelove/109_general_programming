# med2_9.rb

# Bubble Sort is one of the simplest sorting algorithms available. It isn't 
# an efficient algorithm, but it's a great exercise for student developers. 
# In this exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array. 
# On each pass, each pair of consecutive elements is compared. If the first of 
# the two elements is greater than the second, then the two elements are swapped. 
# This process is repeated until a complete pass is made without performing any 
# swaps; at that point, the Array is completely sorted.

def bubble_sort!(array)
  
  loop do
    n = 0
    sort = 0

    loop do
      break if n == array.size - 1
      if array[n] > array[n + 1]
        array[n], array[n + 1] = array[n + 1], array[n]
        sort += 1
      end
      n += 1
    end

    break if sort == 0
  end

  array
end

array = [5, 3]
 bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
 bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
 bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)