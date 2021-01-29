vowels = {}

alfabet= ('a'..'z')
alfabet.each_with_index { |value, index| vowels[value] = index + 1 if value =~ /[aeiou]/ }

p vowels
