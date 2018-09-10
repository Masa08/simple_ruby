# 9/10 rubyの最初の課題

print("What is the name of the git giver?")
# nameのあとの改行を取り除く。chomp外すと8行目がおかしなことになると思うので、確認してみましょう。
name = gets.chomp

print("What present did they give you?")
present = gets.chomp

# 一行開けるためにからのputsを挿入。これも削除した場合の挙動とある場合の挙動を確認してみましょう。
puts

# 文字列+変数にするやり方でも、文字列の中で#{}を使って変数を展開するやり方でも、どちらの書き方でも構いませんが、#{}の方が使うことが多いです。
puts("Dear " + name + ".")
puts("Thank you for the #{present}.")