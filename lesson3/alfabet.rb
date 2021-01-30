vowels = {}

alfabet= ('a'..'z')
alfabet.each.with_index(1) { |value, index| vowels[value] = index if value =~ /[aeiou]/ }

p vowels
