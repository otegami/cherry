text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT

p text.scan(/[A-Z][A-Za-z]+/)

text = <<TEXT
私の郵便番号は1234567です。
僕の住所は6770056 兵庫県西脇市1234だよ
TEXT

puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')

text = <<TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT
p text

text = <<-TEXT
名前：伊藤淳一
電話：03(1234)5678
？？：9999-99-9999
？？：03(1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT

puts numbers = text.scan(/0[1-9]\d{0,3}[-(]\d{1,4}[-)]\d{4}/)
# => ["03(1234)5678", "03(1234-5678"]
puts numbers.grep(/\(\d+\)|-\d+-/)
# => ["03(1234)5678"]

text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT
p text.split(/\n/).grep(/クープ.?バ[ケゲ]ット/)

html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*?)<\/option>/, '\1,\2')
puts replaced

text = <<-TEXT
def hello(name)
  puts "Hello, \#{name}!"
end

hello('Alice')

hello('Bob')

hello('Carol')
TEXT
puts text.gsub(/^[ \t]+$/, '')

def hello(name)
  puts "Hello, #{name}!"
end
# text + <<-TEXT
#   def hello(name)
#     puts "Hello, #{name}!"
#   end
# TEXT

# Lorem ipsum dolor sit amet.
# Vestibulum luctus est ut mauris tempor tincidunt.
# Suspendisse eget metus
# Curabitur nec urna eget ligula accumsan congue.
#
# {
#   japan: 'yen',
#   america: 'dollar',
#   italy: 'euro'
# }
#
# name,email
# alice,alice@example.com
# bob,bob@example.com
#
# Feb 14 07:33:02 app/web.1:  Completed 302 Found ...
# Feb 14 07:36:54 heroku/router:  at=info method=...
# Feb 14 07:36:54 app/web.1:  Started HEAD "/" ...
# Feb 14 07:36:54 app/web.1:  Completed 200 ...
#
# sounds that are pleasing to the ear.
# ear is the organ of the sense of hearing.
# I can't bear it.
# Why on earth would anyone feel sorry for you?

text = <<-TEXT
type=zip; filename=users.zip; size=1024;
type=xml; filename=posts.xml; size=2048;
TEXT

puts text.scan(/(?<=filename=)[^;]+/)

text = <<-TEXT
John:guitar, George:guitar, Paul:bass, Ringo:drum
Freddie:vocal, Brian:guitar, John:bass, Roger:drum
TEXT

puts text.scan(/\w+(?=:bass)/)

dangerous_phone_number = <<-TEXT
<script>alert('XSS!!');</script>
03-1234-5678
TEXT

puts !!(dangerous_phone_number =~ /^\d+-\d+-\d+$/)
puts !!(dangerous_phone_number =~ /A\d+-\d+-\d+\z/)

s = '2016-05-08'
puts s.gsub(/(\d+)-(\d+)-(\d+)/, '\1年\2月\3日')
puts s.gsub(/(?<year>\d+)-(?<month>\d+)-(?<day>\d+)/, '\k<year>年\k<month>月\k<day>日')

if m = s.match(/(?<year>\d+)-(?<month>\d+)-(?<day>\d+)/)
  year = m[:year]
  month = m[:month]
  day = m[:day]
end
puts "year: #{year}, month: #{month}, day: #{day}"
p m

if /(?<year>\d+)-(?<month>\d+)-(?<day>\d+)/ =~ s
  puts "year: #{year}, month: #{month}, day: #{day}"
end

html = '<p>Please visit <a href="http://google.com">http://google.com</a>.</p>'
puts html[/<a href="(.+?)">\1<\/a>/]
puts html[/<a href="(?<url>.+?)">\k<url><\/a>/]
