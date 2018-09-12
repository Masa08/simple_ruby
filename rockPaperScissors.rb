# 9/12 ruby 3回ジャンケンを繰り返すver
# 3つの選択肢が入った配列を作成する。
janken = ["Rock", "Paper", "Scissors"]
# 自分とコンピュータのスコアを定義する。
your_score = 0
computer_score = 0

# ここから出力
puts "Welcome to Rock-Paper-Sciccors game! Let's fight 3 times!"

# 3回勝負を繰り返す。number.times do ~ endでブロック(do~end)の中身をnumber回繰り返すという指定が可能。
3.times do
    loop do
        print "Pick your hand!(Rock, Paper, Scissors)："

        # 自分の出し手をここで選択。
        choice = gets.chomp
        puts "Your choice is #{choice}"

        # sampleメソッドを使うと、配列(Rock, Paper, Scissors)からランダムな値を取り出すことができる。
        pc_choice = janken.sample
        puts "Computer choice is #{pc_choice}"

        # 引き分けの場合。
        if choice == pc_choice
            puts "Tie!"
        # 勝ちの場合。
        elsif ((choice == "Paper") && (pc_choice == "Rock")) || ((choice == "Rock") && (pc_choice == "Scissors")) || ((choice == "Scissors") && (pc_choice == "Paper"))
            puts "You win!"
            your_score += 1
            break
        # 負けの場合。
        elsif ((choice == "Rock") && (pc_choice == "Paper")) || ((choice == "Scissors") && (pc_choice == "Rock")) || ((choice == "Paper") && (pc_choice == "Scissors"))
            puts "You lose"
            computer_score += 1
            break
        # Rock,Paper,Scissors以外の値が入れられた場合。
        else
            puts "invalid Input"
        end
    end

    # スコアの出力
    puts "------------------------------"
    puts "Your score is #{your_score}"
    puts "Computer score is #{computer_score}"
    puts "------------------------------\n"
end

# 3回勝負が終わった後に出力
if your_score > computer_score
    puts "Result：Your win! Congratulations!"
elsif your_score == computer_score
    puts "Result：Tie!"
else
    puts "Result：Your lose! Please try again!"
end