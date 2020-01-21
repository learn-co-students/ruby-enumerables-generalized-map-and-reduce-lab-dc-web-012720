# Your Code Here
def map(source)
  result = []
  i = 0
  while i < source.count do
    result.push(yield(source[i]))
    i += 1
  end
  result
end

def reduce(source,start=nil)
if start
    result = start
    i = 0
  else
    result = source[0]
    i = 1
  end
  while i < source.length
    result = yield(result, source[i])
    i += 1
  end
  result
end