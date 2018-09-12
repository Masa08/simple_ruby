# ruby最終課題
# loopの中にある変数は外から呼び出すことができないので、loop文の外で定義しないといけない。そしてその変数を更新する形で、数字を上書きする。
number = 0
number_second = 0

# メソッドの定義
def add(f, s)
    puts f + s
end

def subtract(f, s)
    puts f - s
end

def multiple(f, s)
    puts f * s
end

def division(f, s)
    puts f / s
end

def remainder(f, s)
    puts f % s
end

# 最初の数字を入力
print "Hello, Let's cariculate! Please enter a first number:"

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

    # to_sはデフォルトだからつけなくても良い。||は「または」(&&は「かつ」)。
    if number.to_i != 0 || number.to_s == "0"
        #後の過程で計算に使用するため、integer型(又はfloat型)にする必要がある。
        number = number.to_i
		break
    else
        print "Error:Please enter a number:"
	end
end

# 二つ目の数字を入力。
print "Please enter a next number:"

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

# オペレーター(+・-・*・/・%のどれか)の入力。
print "Please input operator:"

operator = ""
loop do
    operator = gets.chomp
    break if operator == "+" || operator == "-" || operator == "*" || operator == "/" || operator == "%"
    puts "Invalid operator"
end

# オペレーターによって処理を変える。case文を使っても良い。
print "The answer is "
if operator == "+"
    add(number, number_second)
elsif operator == "-"
    subtract(number, number_second)
elsif operator == "*"
    multiple(number, number_second)
elsif operator == "/"
    division(number, number_second)
elsif operator == "%"
    remainder(number, number_second)
end