# 9/11 ruby
print "Please enter an integer for the countdown!"
integer = gets.to_i

# integerが0以上の場合はずっとwhileの中身を繰り返す。
# => integer = -1になった時にbreakする。
while integer >= 0
    puts integer
    # ingtegerに入っている数字から1を引く。
    # (integer -= 1) == (integer = integer - 1)
    integer -= 1
end

puts "Done"