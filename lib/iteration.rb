def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
row_index = 0
pizza_love = []
while row_index < src.count do
  element_index = 0
  while element_index < src[row_index].count do
    topping_one = src[row_index][element_index]
    topping_two = src[row_index][element_index + 1]
    pizza_love.push("I love #{topping_one} and #{topping_two} on my pizza")
    element_index += 2
  end
  row_index += 1
end
  
return pizza_love
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
row_index = 0
greater_pairs = []
while row_index < src.count do
  element_index = 0
  while element_index < src[row_index].count do
    greater_num = src[row_index][element_index]
    if (src[row_index][element_index + 1] > greater_num)
      greater_num = src[row_index][element_index + 1]
    end
    greater_pairs.push(greater_num)
    element_index += 2
  end
  row_index += 1
end
  
return greater_pairs
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  
row_index = 0
even_pairs_sum = 0
while row_index < src.count do
  element_index = 0
  while element_index < src[row_index].count do
    if ((src[row_index][element_index] % 2 == 0) && (src[row_index][element_index + 1] % 2 == 0))
      even_pairs_sum += src[row_index][element_index] + src[row_index][element_index + 1]
    end
    element_index += 2
  end
  row_index += 1
end
  
return even_pairs_sum
  
end
