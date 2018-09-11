# 9/11 ruby
print "Enter an integer:"
integer = gets.to_i

# 変数iを1..integer回繰り返す。
# ex: integer = 5の場合、変数iを5回繰り返す。
for i in 1..integer do
    puts i
end

puts "Done"