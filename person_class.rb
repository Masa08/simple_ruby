class Person
    # attr_accessor:データの読み込みと書き込みを可能にする。
    attr_accessor :name, :age

    # attr_accesorで代用している部分。
    # ---
    # attr_writer :name, :age
    # attr_reader :name, :age
    # ---

    # attr_writerで代用している部分。
    # setter:データを書き込むor更新するためのメソッド。
    # ---
    # def name=(name)
    #     @name = name
    # end
    #
    # def age=(age)
    #     @age = age
    # end
    # ---

    # attr_readerで代用している部分。
    # reader:データを読み込むためのメソッド。
    # ---
    # def name
    #     @name
    # end
    #
    # def age
    #     @age
    # end
    # ---
end

#  Personクラスのオブジェクト作成(人間の設計図から、一人の人間の型を作成)。
person1 = Person.new

# getsでname取得、データをperson1.nameに代入する。
print "Who are you?:"
person1.name = gets.chomp

# getsで取得、データをperson1.ageに代入する。
print "How old are you?:"
person1.age = gets.chomp.to_i

# 最終出力結果。
puts "------------------------------"
puts "Your name is #{person1.name}\nYour age is #{person1.age}"


