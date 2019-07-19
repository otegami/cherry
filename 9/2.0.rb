# puts 'Start.'
#
# module Greeter
#   def hello
#     'Hello'
#   end
# end
#
# begin
#   greeter = Greeter.new
# rescue
#   puts '例外が発生したが、そのまま続ける。'
# end
#
# puts 'End.'

# def method_1
#   puts 'method_1 start.'
#   begin
#     method_2
#   rescue
#     puts 'Exceptional thing appers'
#   end
#   puts 'method_1 end.'
# end
#
# def method_2
#   puts 'method_2 start.'
#   method_3
#   puts 'method_2 end.'
# end
#
# def method_3
#   puts 'method_3 start.'
#   1 / 0
#   puts 'method_3 end.'
# end
#
# p method_1

# begin
#   1 / 0
# rescue => e
#   puts "Error Class: #{e.class}"
#   puts "Error Message: #{e.message}"
#   puts "Back trace -----"
#   puts e.backtrace
#   puts "-----"
# end
#
# begin
#   'foo'.foo
# rescue ZeroDivisionError, NoMethodError => e
#   puts "#{e.class}, #{e.message}"
# rescue
#   puts 'A'
# end

# def name
#   begin
#     'abc'.foo
#   rescue NoMethodError
#     puts "Error: #{e.class}, #{e.message}"
#   end
# end
# NoMethodError
# p name

# begin
#   1 / 0
# rescue NoMethodError
#   puts 'NoMethodErrorです。'
# rescue NameError
#   puts 'NameErrorです。'
# rescue
#   puts 'その他のエラーです。'
# end

retry_count = 0

begin
  puts '処理を開始します。'
  1 / 0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryします。(#{retry_count}回目)"
    retry
  else
    puts 'retryに失敗しました。'
  end
end
