def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end

puts make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| "#{b} on wheat" }

def map(source_array)
  new_arr = []
  index = 0
  
  while index < source_array.length do
    new_arr << (yield(source_array[index]))
    index += 1
  end
  new_arr
end

def reduce(source_array, starting_value=nil)
  if starting_value
    total = starting_value
    index = 0 
  else
    total = source_array[0]
    index = 1
  end
  while index < source_array.length do
    total = yield(total, source_array[index])
    index += 1 
  end
  total
end










