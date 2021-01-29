END_FIBONACCI = 100
fibonacci = [0, 1]
num = 1

while num < END_FIBONACCI
  fibonacci << num
  num = fibonacci.last(2).reduce(:+)
end

p fibonacci
