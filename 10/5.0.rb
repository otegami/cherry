# add_proc = Proc.new { |a, b| a + b }
#
# p add_proc.call(10, 20)
# p add_proc.yield(10, 20)
# p add_proc.(10, 20)
# p add_proc[10, 20]
#
# p add_proc === [10, 20]
#
# def judge(age)
#   adult = Proc.new { |n| n > 20 }
#   child = -> n { n < 20 }
#
#   case age
#   when adult
#     '大人です。'
#   when child
#     '子供です。'
#   else
#     '20歳です'
#   end
# end
#
# p judge(25)
# p judge(18)
# p judge(20)
#
# reverse_proc = Proc.new { |s| s.reverse }
# p ['Ruby', 'Java', 'Perl'].map(&reverse_proc)
#
# p other_proc = reverse_proc.to_proc
# p reverse_proc.equal?(other_proc)
#
# p split_proc = :split.to_proc
# p split_proc.call('a-b-c-d e')
# p split_proc.call('a-b-c-d e', '-')
# p split_proc.call('a-b-c-d e', '-', 3)

# def generate_proc(array)
#   counter = 0
#   Proc.new do
#     counter += 10
#     array << counter
#   end
# end
#
# values = []
# sample_proc = generate_proc(values)
# p values
# sample_proc.call
# p values
# sample_proc.call
# p values

def proc_return
  f = Proc.new { |n| return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

def lambda_return
  f = ->(n) { return n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

p proc_return
p lambda_return

# def proc_return
#   f = Proc.new { |n| break n * 10 }
#   ret = [1, 2, 3].map(&f)
#   "ret: #{ret}"
# end

def lambda_return
  f = ->(n) { break n * 10 }
  ret = [1, 2, 3].map(&f)
  "ret: #{ret}"
end

# p proc_return
p lambda_return
