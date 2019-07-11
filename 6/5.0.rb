p Regexp.new('\d{3}-\d{4}')
puts "/http:\/\/example\.com/"
p %r!http://example\.com!
p %r{http://example\.com}

pattern = '\d{3}-\d{4}'
puts '123-4567' =~ /#{pattern}/

text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です。'
when /^\d{4}\/d{1,2}\/d{1,2}&/
  puts '日付です。'
when /^\d+-\d+-\d+$/
  puts '電話番号です。'
end

p 'HELLO' =~ /hello/i
p 'HELLO' =~ %r(hello)i

regexp = Regexp.new('hello', Regexp::IGNORECASE)
p 'HELLO' =~ regexp

p "Hello\nBye" =~ /Hello.Bye/
p "Hello\nBye" =~ /Hello.Bye/m

regexp = Regexp.new('Hello.Bye', Regexp::MULTILINE)
p "Hello\nBye" =~ regexp

regexp = /
  \d{3} #電話番号の先頭3桁
  -     #区切り文字のハイフン
  \d{4} #電話番号の末尾4桁
/x

puts '123-4567' =~ regexp

regexp = /
  \d{3} #電話番号の先頭3桁
  \     #区切り空白
  \d{4} #電話番号の末尾4桁
/x
puts "123 4567" =~ regexp

pattern = <<'TEXT'
  \d{3}
  -
  \d{4}
TEXT

regexp = Regexp.new(pattern, Regexp::EXTENDED)
puts '123-4567' =~ regexp

p "HEllo\nBYE" =~ /Hello.Bye/im

regexp = Regexp.new('Hello.Bye', Regexp::IGNORECASE | Regexp::MULTILINE)
p "HEllo\nBYE" =~ regexp

text = '私の誕生日は1977年7月17日'
text =~ /(\d{4})年(\d{1,2})月(\d{1,2})日/
# p $~
# p $&
# p $1, $2, $3
p Regexp.last_match(0)
p Regexp.last_match(1)
p Regexp.last_match(2)
p Regexp.last_match(3)

p /\d{3}-\d{4}/.match?('123-4567')
p $~
p Regexp.last_match
