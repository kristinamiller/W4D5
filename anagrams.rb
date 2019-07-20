def first_anagram?(string_1, string_2)
  permutations = string_1.split("").permutation.to_a
  permutations.map! do |sub_arr|
    sub_arr.join("")
  end 
  permutations.include?(string_2)
end 

def second_anagram?(string_1, string_2)
  array = string_2.split("")

  string_1.each_char do |char|
    idx = array.index(char)
    return false if idx.nil?
     array.delete_at(idx)
   end 
   array.empty?
end 

def third_anagram?(string_1, string_2)
  array_1 = string_1.split("").sort
  array_2 = string_2.split("").sort
  array_1 == array_2
end 

def fourth_anagram?(string_1, string_2)  
  hash = Hash.new(0)
  
  string_1.each_char do |char|
    hash[char] += 1
  end 
  string_2.each_char do |char|
    #return false if !hash.keys.include?(char)
    hash[char] -= 1
  end 

  hash.values.all? { |value| value == 0}
end 


p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")

#p [1,2,3,4].permutation.to_a.length