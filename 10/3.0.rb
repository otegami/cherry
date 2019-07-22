# hello_proc = Proc.new do
#   'Hello!'
# end
#
# hello_proc = Proc.new { 'hello' }
#
# p hello_proc.call
#
# add_proc = Proc.new { |a = 0, b = 0| a + b }
# p add_proc.call(10, 20)
# p add_proc.call(10)
# p add_proc.call
#
# def greeting(&block)
#   puts block.class
#   puts 'おはよう'
#   text = block.call('こんにちは')
#   puts text
#   puts 'こんばんは'
# end

# greeting do |text|
#   text * 2
# end

# repeat_proc = Proc.new { |text| text * 2 }
# greeting(&repeat_proc)

# def greeting(arrange_proc)
#   puts 'おはよう'
#   text = arrange_proc.call('こんにちは')
#   puts text
#   puts 'こんばんは'
# end
#
# repeat_proc = Proc.new { |text| text * 2 }
# greeting(repeat_proc)

# def greeting(proc_1, proc_2, proc_3)
#   puts proc_1.call('こんにちは')
#   puts proc_2.call('おはよう')
#   puts proc_3.call('こんばんは')
# end
#
# shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
# repeat_proc = Proc.new { |text| text * 2 }
# question_proc = Proc.new { |text| "#{text}?" }
#
# greeting(shuffle_proc, repeat_proc, question_proc)
#

# ->(a = 0, b = 0) { a + b }
# lambda { |a, b| a + b }
#
# add_proc = Proc.new{ |a, b| a + b }
# p add_proc.call(10, 20)
#
# add_lambda = ->(a, b) { a + b }
# p add_lambda.call(10, 20)

add_proc = Proc.new{ |a, b| a.to_i + b.to_i }
# p add_proc.call(10)
# p add_proc.call(10, 20, 100)
p add_proc.class
p add_proc.lambda?

add_lambda = ->(a, b) { a.to_i + b.to_i }
# p add_lambda.call(10)
# p add_lambda.call(10, 20, 100)
p add_lambda.class
p add_lambda.lambda?
