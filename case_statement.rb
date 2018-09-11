# 9/11 ruby課題
a = 5

# ---
# case 変数
#   when 条件
#       出力内容
#   else
#       それ以外の場合の処理
# end
# ---
answer = case a
    when 5
        puts "a is 5"
    when 6
        puts "a is 6"
    else
        puts "a is neither 5, nor 6"
end

print answer