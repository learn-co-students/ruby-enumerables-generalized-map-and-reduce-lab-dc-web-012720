def map(source)
  i = 0
  arr = []

    while i < source.length do
    arr.push(yield(source[i]))
    i += 1
    end
  arr
end

def reduce(source, starting_point = nil)
  if starting_point
    sum = starting_point
    i = 0
  else
    sum = source[0]
    i = 1
  end 

  while i < source.length
    sum = yield(sum, source[i])
    i += 1
  end
  sum
end