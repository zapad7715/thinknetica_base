puts 'Программа запрашивает у пользователя имя и рост и выводит идеальный вес по формуле <рост> - 110'

puts 'Введите Ваше имя'
name = gets.chomp.capitalize

puts 'Введите Ваш рост в сантиметрах'
height = gets.chomp.to_i

weight = height - 110

if weight < 0
  puts 'Ваш вес уже оптимальный'
else
  puts "#{name} Ваш идеальный вес #{weight} киллограмм"
end
