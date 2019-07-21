# file = File.open('some.txt', 'w')
#
# begin
#   file << 'Hello'
# ensure
#   file.close
# end
# File.open('some.txt', 'w') do |file|
#   file << 'Hello'
#   1 / 0
# end
#
# begin
#   puts 'Hello.'
# rescue
#   puts '例外が発生しました。'
# else
#   puts '例外が発生しませんでした。'
# end
#
# begin
#   puts 'Hello.'
#   puts '例外が発生しませんでした。'
# rescue
#   puts '例外が発生しました。'
# end

# ret =
#   begin
#     'OK'
#   rescue
#     'error'
#   ensure
#     'ensure'
#   end
# p ret

# ret =
#   begin
#     1 / 0
#   rescue
#     'error'
#   ensure
#     'ensure'
#   end
# p ret
#
# def some_method(n)
#   begin
#     1 / n
#     'OK'
  # rescue
  #   'error'
#   ensure
#     return 'ensure'
#   end
# end
#
# puts '---------'
# p some_method(1)
# p some_method(0)
#
# p 1 / 1 rescue 0
# p 1 / 0 rescue 0

# require 'date'
#
# def to_date(string)
#   # begin
#   #   Date.parse(string)
#   # rescue
#   #   nil
#   # end
#   Date.parse(string) rescue nil
# end
#
# p to_date('2017-01-01')
# p to_date('abcdef')
#
# begin
#   1 / 0
# rescue => e
#   puts "#{e.class} #{e.message}"
#   puts e.backtrace
# end

# begin
#   1 / 0
# rescue
#   puts "#{$!.class} #{$!.message}"
#   puts $@
# end

# def fizz_bazz(n)
#   if n % 15 == 0
#     'Fizz Bazz'
#   elsif n % 3 == 0
#     'Fizz'
#   elsif n % 5 == 0
#     'Bazz'
#   else
#     n.to_s
#   end
# rescue => e
#     puts "#{e.class} #{e.message}"
# end
#
#
# p fizz_bazz(nil)
#
# def some_method
#   1 / 0
# rescue => e
#   puts "エラーが発生しました: #{e.mesage}"
#   puts e.backtrace
# end
#
# p some_method
#
# begin
#   some_method
# rescue => e
#   puts "エラーが発生しました: #{e.class} #{e.message}"
#   puts e.backtrace
#
#   original = e.cause
#   unless original.nil?
#     puts "元の例外: #{original.class} #{original.message}"
#     puts original.backtrace
#   end
# end

# def fizz_buzz(n)
#   if n % 15 == 0
#     'FizzBuss'
#   elsif n % 3 == 0
#     'Fizz'
#   elsif n % 5 == 0
#     'Buzz'
#   else
#     n.to_s
#   end
# rescue => e
#   puts "[LOG] エラーが発生しました: #{e.class} #{e.message}"
#   raise
# end
#
# fizz_buzz(nil)

class NoCountryError < StandardError
  attr_reader :country

  def initialize(message, country)
    @country = country
    super("#{message} #{country}")
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'ruppe'
  else
    raise NoCountryError.new("無効な国名です。", country)
  end
end

begin
  currency_of(:italy)
rescue NoCountryError => e
  puts e.message
  puts e.country
end
