regex = /\d{3}-\d{4}/
p regex.class

p /\d{3}-\d{4}/ =~ '358-0022'
p /\d{3}-\d{4}/ =~ 'Hello'

if /\d{3}-\d{4}/ =~ '358-0022'
  puts 'マッチしました'
else
  puts 'マッチしませんでした'
end

p /\d{3}-\d{4}/ =~ '358-0022'
p /\d{3}-\d{4}/ !~ '358-0022'
p /\d{3}-\d{4}/ =~ 'Hello'
p /\d{3}-\d{4}/ !~ 'Hello'

text = '私の誕生日は1977年7月17日です。'
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p m

if m = /(\d+)年(\d+)月(\d+)日/.match(text)
  p m
else
  puts 'マッチしませんでした。'
end
p m[1], m[2, 2], m[1, 3]

p text.match(/(\d+)年(\d+)月(\d+)日/)

m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)/.match(text)
p m
p m[:year], m['year']

if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)/ =~ text
  puts "#{year}, #{month}, #{day}"
end
puts "!!!!"
puts "#{year}"
# if text =~ /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)/
#   puts "#{year}, #{month}, #{day}"
# end

p '123 456 789'.scan(/\d+/)
p '1997年7月17日 2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)
p '1997年7月17日 2016年12月31日'.scan(/\d+年\d+月\d+日/)
p '1997年7月17日 2016年12月31日'.scan(/\d+年\d+月\d+日/)

text = "郵便番号は339-1032です"
p text[/\d{3}-\d{4}/]

text = "098-0098 4906-0123"
p text[/\d{3}-\d{4}/]

text = '誕生日は1977年7月17日です'
p text[/(\d+)年(\d+)月(\d+)日/]
p text[/(\d+)年(\d+)月(\d+)日/, 1]

p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)/, :day]
p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)/, 'day']

text = "郵便番号は339-1032です"
p text.slice(/\d{3}-\d{4}/)

text = '誕生日は1977年7月17日です'
p text.slice!(/(\d+)年(\d+)月(\d+)日/)
p text

text = '123,456-987'

p text.split(',')
p text.split(/[,-]/)

p text.gsub(',', ':')
p text.gsub(/[,-]/, ':')

text = '誕生日は1977年7月17日です。'
p text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3')
p text.gsub(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, '\k<year>-\k<month>-\k<day>')

text = '123,456-789'
hash = {',' => ':', '-' => '/'}
p text.gsub(/[,-]/, hash)
p text.gsub(/[,-]/) { |matched| matched == ',' ? ':' : '/' }

text = '123,456-789'
text.gsub!(/,|-/, ':')
p text
