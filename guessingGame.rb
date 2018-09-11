# 変数定義
# 1~10までのランダムの数値を出力するrandと試みた回数を保存するtriesを定義する。
rand = rand(1..10)
tries = 1

# ここから画面に出力
print "Welcome to Guess the Number Game!\nPlease choose a number from 1 to 10："

loop do
    # loop内でnumberを定義しないとifのreturnが無限に出力されることになる。
    number = gets.to_i

    # 最初にinvalidなパターンを弾く
    if number > 10 || number < 0
        puts "invalid number"
    # randが入力値(number)よりも多い場合
    elsif number < rand
        puts "Your guess number is lower than the number"
    # randが入力値(number)と同じ、すなわち正解の場合
    elsif number == rand
        puts "Your answer is correct"
        # ここでloopを抜ける
        break
    # randが入力値(number)よりも小さい場合
    else
        puts "Your guess number is higher than the number"
    end

    # 不正解の場合はtriesに+1する。
    tries += 1
end

# break後に出力
puts "The number is #{rand}\nYou had #{tries} tries"