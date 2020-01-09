def map(array)
  #map returns a new array of the manipulated elements
  newArray = []
  i = 0
  while i < array.length do 
    newArray.push(yield(array[i]))
    i += 1
  end
  return newArray
end

def reduce(array, starting = nil)
  if starting
    sum = starting
    i = 0
  else
    sum = array[0]
    i = 1
  end
  while i < array.length do
    sum = yield(sum, array[i])
    i += 1
  end
  return sum
end