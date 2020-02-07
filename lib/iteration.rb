def join_ingredients(src)
  food_result = []
  row_index = 0
  while row_index < src.count do
      food_result << "I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza"
      row_index += 1
  end
  
  return food_result
  
end

def find_greater_pair(src)
  larger_num_array = []
  row_index = 0 
  while row_index < src.count do 
    larger_num_array << src[row_index].sort.pop
    row_index += 1 
  end
  
  return larger_num_array
  
end

def total_even_pairs(src)
  total_evens = 0
  row_index = 0 
  while row_index < src.count do 
    if src[row_index][0] % 2 == 0 && src[row_index][1] % 2 == 0
      total_evens += src[row_index][0] + src[row_index][1]
    end
    row_index += 1
  end
  
  return total_evens

end
