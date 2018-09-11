# 9/11 ruby課題
print "What is the time?"

# whenの部分で数字を条件に指定しているので、取得値はIntegerにしなければいけない。
time = gets.to_i

case time
    when 6
        puts "Good Morning!"
    when 12
        puts "Good Noon!"
    when 15
        puts "Good Afternoon!"
    when 21
        puts "Good Evening!"
    when 24
        puts "Go to sleep"
    else
        puts "I don't know this time!!!"
end