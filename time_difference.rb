require 'byebug'

def my_min(list)
  list.each do |el_1|
   return el_1 if list.all? { |el_2| el_1 <= el_2}
  end 
end 

def inject_min(list)
  list.inject do |acc, el|
    if el < acc
      el
    else
      acc
    end 
  end 
end 

# list = [ 0, 3, 5, 4, -5, 10, 1, 90, -7 , -10 ]
# p my_min(list)
# p inject_min(list)

def largest_contiguous_sum(list)
  subarrays = []
  (0...list.length).each do |idx1|
    (idx1...list.length).each do |idx2|
      subarrays << list[idx1..idx2]
    end
  end
  sums = subarrays.map { |sub_arr| sub_arr.sum }
  sums.max
end



def inject_max(list)
  max_num = list.max
  #debugger
    list.inject do |acc, el|
      if acc + el > max_num 
        max_num = acc + el 
        acc += el
      elsif acc + el < 0
        acc = 0
      else
        acc += el 
      end
    end
max_num
end

list1 = [-5, -1, -3]
list2 = [2, 3, -6, 7, -6, 7]
 list3 = [5, 3, -7]
  p inject_max(list1)
  p inject_max(list2)
  p inject_max(list3)