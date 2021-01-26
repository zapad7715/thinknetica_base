puts 'Программа вычисляет дискриминант и корни квадратного уравнения (ax²+bx+c=0), если они есть.'

puts 'Введите значение a'
a = gets.chomp.to_f

puts 'Введите значение b'
b = gets.chomp.to_f

puts 'Введите значение c'
c = gets.chomp.to_f

discriminant = b**2 - (4 * a * c)

if discriminant < 0
  puts "Корней нет"
elsif discriminant == 0
  x = -b / (2 * a)
  puts "Уравнение имеет один корень равный #{x}, дискриминант равен #{discriminat}"
else
  c = Math.sqrt(discriminant)
  x1 = (-b + c) / (2 * a)
  x2 = (-b - c) / (2 * a)
  puts "Уравнение имеет два корня #{x1} и #{x2}, дискриминант равен #{discriminat}"
end
