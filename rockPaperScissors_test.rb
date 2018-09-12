# 9/12 ruby Noをいうまで無限にジャンケンを繰り返すver
# 3つの選択肢が入った配列を作成する。
janken = ["Rock", "Paper", "Scissors"]
# 自分とコンピュータのスコアを定義する。
your_score = 0
computer_score = 0

# ここから出力
puts "Welcome to Rock-Paper-Sciccors game! Let's fight 3 times!"

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
    # 負けの場合。
    elsif ((choice == "Rock") && (pc_choice == "Paper")) || ((choice == "Scissors") && (pc_choice == "Rock")) || ((choice == "Paper") && (pc_choice == "Scissors"))
        puts "You lose"
        computer_score += 1
    # Rock,Paper,Scissors以外の値が入れられた場合。
    else
        puts "invalid Input"
    end

    # 勝負を続けるか選ぶ。
    # 最初にisBreakという変数を値falseで定義する。
    isBreak = false

    # YesNoloop開始。
    loop do
        print "Do you want to play again?："
        res = gets.chomp

        if res == "No" || res == "no"
            # isBreakをtrueにした上で、YesNoloopを抜ける。
            isBreak = true
            break
        elsif res == "Yes" || res == "yes"
            # YesNoloopのみを抜ける。
            break
        else
            # YesNoloopを繰り返す。
            puts "Invalid"
        end
    end

    # isBreakがtrueの場合、すなわちNoを選んだ場合のみ、ジャンケンloopを抜ける。
    # Yesを選んだ場合はisBreakがfalseのままなので、ジャンケンloopを抜けることができず、最初に戻る。
    # test if conditionで「conditionがtrueだったら、testを実行する」という意味。
    break if isBreak
end