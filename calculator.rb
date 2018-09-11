# ruby最終課題 by hani-san in August batch

puts "Hello, Let's cariculate! Please enter a first number"

# loopの中にある変数は外から呼び出すことができないので、loop文の外で定義しないといけない。そしてその変数を更新する形で、数字を上書きする。
number = 0

loop do
	# ユーザーは文字(string)か数字(integer)を入力する。
    number = gets.chomp
    # ---
    # [前提知識]
	# 1.文字列にto_iをつけると全て0になる。
	# => numberをintegerに変更したときに、0にならない場合はbreak(次の数字が打てるようになる)。0になる場合はそれが文字列ということになるのでerror発生。
	# 2.上記条件のみだと、直接0が入力されたときにbreakできない。
    # => 0だけ例外的にbreakする処理をかく。例外的に入力した文字をstring変換した時に、結果が"0"の場合にはbreakするようにする。
    # ---

    # to_sはデフォルトだからつけなくても良い。||は「または」。
    if number.to_i != 0 || number.to_s == "0"
        #後の過程で計算に使用するため、integer型(又はfloat型)にする必要がある。
        number = number.to_i
		break
    else
        puts "Error:Please enter a number"
	end
end

puts "Please enter a next number"

number_second = 0

loop do
	number_second = gets.chomp
	# 上記と同じプロセス。
	if number_second.to_i != 0 || number_second.to_s == "0"
		number_second = number_second.to_i
		break
    else
        puts "Error:Please enter a number"
	end
end

puts "Please input operator"

# オペレーター(+・-・*・/のどれか)を記入する。
operator = gets.chomp

# オペレーターによって処理を変える。case文を使っても良い。
if operator == "+"
    puts number + number_second
elsif operator == "-"
    puts number - number_second
elsif operator == "*"
    puts number * number_second
elsif operator == "/"
    puts number / number_second
elsif operator == "%"
    puts number % number_second
else
    puts "Error"
end