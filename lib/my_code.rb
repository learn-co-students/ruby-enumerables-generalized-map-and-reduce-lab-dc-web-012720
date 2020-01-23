# Your Code Here
def map(source)
  newArr = []
  source.each do |item|
    newArr << yield(item)
  end 
  newArr
end

def reduce(source, startingPoint=nil)
  if startingPoint
    total = startingPoint
  else 
    total = source[0]
    source.shift()
  end 
  source.each do |item|
    total = yield(total, item)
  end
  total
end
  