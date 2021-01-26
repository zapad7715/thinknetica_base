puts 'Программа запрашивает у пользователя 3 стороны треугольника и определяет, является ли треугольник прямоугольным, используя теорему Пифагора'

puts 'Введите значение a'
a = gets.chomp.to_f
puts 'Введите значение b'
b = gets.chomp.to_f
puts 'Введите значение c'
c = gets.chomp.to_f

if a > b && a > c
  hypotenuse  = a
  first_side  = b
  second_side = c
elsif b > a && b > c
  hypotenuse  = b
  first_side  = a
  second_side = c
elsif c > b && c > a
  hypotenuse  = c
  first_side  = a
  second_side = b
end

if a == b && a == c
  puts 'Треугольник равносторонний, но не прямоугольный'
elsif hypotenuse**2 == first_side**2 + second_side**2
  puts 'Треугольник прямоугольный'
else
  puts 'Треугольник непрямоугольный'
end
