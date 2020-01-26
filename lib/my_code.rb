# Your Code Here
def map(source_array)
 result = []
 counter = 0 
 while counter < source_array.count do 
  result[counter] = yield(source_array[counter])
  counter += 1
 end
 result
end


def reduce(source_array, starting_point = nil)
  if starting_point
     sum = starting_point
     counter = 0 
  else
     sum = source_array[0]
     counter = 1 
  end
    
  while counter < source_array.count
      sum = yield(sum, source_array[counter])
      counter += 1
  end
  sum
end
  