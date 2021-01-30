days_in_month = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ]

puts 'Введите число месяца в формате ДД'
day = gets.chomp.to_i

puts 'Введите месяц в формате ММ'
month = gets.chomp.to_i - 1

puts 'Введите год в формате ГГГГ'
year = gets.chomp.to_i

days_in_month[1] = 29 if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0))
day += days_in_month.take(month).sum

puts "Порядковый номер даты от начала года: #{day}"
