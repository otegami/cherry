numbers = [1, 2, 3, 4, 5, 6,]
# new_numbers = []
# numbers.each { |n| new_numbers << n * 10 }
# p new_numbers

new_numbers = numbers.map { |n| n * 10 }
p new_numbers

even_numbers = numbers.select { |n| n.even? }
p even_numbers

non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
p non_multiples_of_three

even_number = numbers.find { |n| n.even? }
p even_number

sum = numbers.inject(0) { |result, n| result + n }
p sum

p ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].inject('Sun') { |result, n| result + n }

p ['ruby', 'java', 'perl'].map { |n| n.upcase }

p ['ruby', 'java', 'perl'].map(&:upcase)

p numbers.select(&:odd?)
