# adv1_8.rb

# Sort an array of passed in values using merge sort. You can assume that this 
# array may contain only one type of data. And that data may be either all 
# numbers or all strings.

# Merge sort is a recursive sorting algorithm that works by breaking down the 
# array elements into nested sub-arrays, then recombining those nested sub-arrays 
# in sorted order.

def merge_sort(array)
  return array if array.to_s.start_with?"[["
  array = array.each_slice(2).map do |x, y| 
    if !y.nil?
      [[x],[y]]
    else
      [[x]]
    end
  end
  
  merge_sort(array)

  # n = 0
  # array.size.times do
  #   array[n] = array[n].flatten!.each_slice(2).map do |x, y| 
  #     if !x.nil? && !y.nil? && x > y
  #       x, y = y, x
  #     else
  #       x
  #     end
  #   end
  #   n += 1
  # end

  # results = []

  array.flatten!.sort
end

p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]
p merge_sort([5, 3]) #== [3, 5]
p merge_sort([6, 2, 7, 1, 4]) #== [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]