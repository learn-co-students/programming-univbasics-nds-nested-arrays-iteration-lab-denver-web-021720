def join_ingredients(src)
  answer = []
i = 0 
while i < src.length do 
inner = src[i]
answer << "I love #{inner[0]} and #{inner[1]} on my pizza"
i += 1
end
answer 
end 

def find_greater_pair(src)
  answer = []
  i = 0
  while i < src.length do 
    answer << (src[i][0] > src[i][1] ? src[i][0] : src[i][1])
    i += 1 
end
answer 
end 

def total_even_pairs(src)
total = 0
  i = 0
  while i < src.length do
    if (src[i][0] % 2 == 0) && (src[i][1] % 2 == 0)
    total += (src[i][0] + src[i][1])
  end
    i += 1
  end

  total
end
