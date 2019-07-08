a = [1, 2, 3]
a[1]

a[4] = 50
p a

a << 1
p a

a.delete_at(1)
p a

a, b = 1, 2
p a, b

a, b = [1, 2]
p a,b

a, b = [10]
p a,b

e, f = [100, 200, 300]
p e, f

p 14.divmod(3)

quo_rem = 14.divmod(3)
puts "商は#{quo_rem[0]}、余りは#{quo_rem[1]}"

quotient, remainder = 14.divmod(3)
puts "商は#{quotient}、余りは#{remainder}"
