# 9/11 ruby
names = ["John", "Jane", "Joe"]

# namesの中身をnameに代入。このブロック内において、変数nameを使うことができるようになる。
names.each do |name|
    puts name
end

# do ~ endを使用する代わりに以下のような書き方も可能。
# names.each { |name| puts name }