basket = {}

# Запрашиваем у пользователя значения
loop do
  puts 'Введите название товара или stop для выхода'
  item = gets.chomp.downcase

  if basket[item]
    puts 'В корзине уже есть этот товар. Обновить значения? Д/н'
    answer = gets.chomp
    next if answer == 'н'
  end
  break if item == 'stop'

  puts 'Введите цену за еденицу товара'
  price = gets.chomp.to_f

  puts 'Введите количество товара'
  qty = gets.chomp.to_f

  basket[item] = { price: price, qty: qty }
end

# Выводим информацию

puts "Ваша корзина содержит: #{basket}"

total = 0
basket.each do |item_name, item_value|
  total_price = item_value[:price] * item_value[:qty]
  total += total_price
  puts "Итоговая сумма за товар #{item_name} составила #{total_price}"
end

puts "Итоговая сумма за все товары: #{total}"

