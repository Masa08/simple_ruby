# 9/10 ruby二番目の課題

print("Input a grade: ")

# getsのデフォルトのデータ型はString型なので数字を入力する場合には、to_i(to integer)メソッドを利用してデータ型を数字型にする必要がある。
grade = gets.to_i

if grade >= 75 && grade <= 100
    puts("The grade is: #{grade} \nYou passed!")
elsif grade >= 50 && grade <= 74
    puts("Your grade is #{grade} \nYou failed!")
else
    puts("Invalid input")
end