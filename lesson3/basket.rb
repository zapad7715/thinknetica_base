basket = {}

loop do
  total = 0 

  puts 'Введите название товара или stop для выхода'
  name = gets.chomp.downcase
  if basket[name]
    puts 'В корзине уже есть этот товар. Обновить значения? Д/н'
    answer = gets.chomp
    next if answer == 'н'
  end
  break if name == 'stop'

  puts 'Введите цену за еденицу товара'
  unit_price = gets.chomp.to_f

  puts 'Введите количество товара'
  count = gets.chomp.to_f

  basket[name] = { unit_price => count }

  sum = unit_price * count

  basket.each_value do |value|
    value.each_pair { |k,v| total += k * v }
  end

  puts "Ваша корзина содержит: #{basket}"
  puts "Итоговая сумма за текущий товар: #{sum}"
  puts "Итоговая сумма за все товары: #{total}"
end
