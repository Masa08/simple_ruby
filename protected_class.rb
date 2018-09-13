class Person
    # public
    def public?(other_person)
        age > other_person.age
        puts "public!"
    end

    def internal_use_private_and_protected(op)
        protected?(op)
        private?(op)
    end

    def internal_use_private_and_protected_with_reciever
        self.normal_protected
        self.normal_private
    end

    # protected
    def use_protected(op)
        self.protected?(op)
    end

    # private
    def use_private(op)
        self.private?(op)
    end

    # setter
    def age=(age)
        @age = age
    end

    protected
        # getter
        def age
            @age
        end

        def protected?(other_person)
            age > other_person.age
            puts "protected!"
        end

        def normal_protected
            puts "protected"
        end

    private
        def private?(other_person)
            age > other_person.age
            puts "private!"
        end

        def normal_private
            puts "private"
        end
end

p1 = Person.new
p1.age = 21

p2 = Person.new
p2.age = 25

# publicは外部から呼び出すことができる。
# p2.public?(p1)

# protectedメソッド、privateメソッドともに、外部から呼び出すことはできない。
# p2.protected?(p1)
# p2.private?(p1)

# 両メソッド、内部からの呼び出しは可能。
# p2.internal_use_private_and_protected(p1)

# protectedはレシーバーつきでも呼び出し可能。
# privateはレシーバーつきだと呼び出せず。
# p2.internal_use_private_and_protected_with_reciever

# protected メソッドは自クラスに別インスタンスを渡しても呼び出し可能。
p2.use_protected(p1)

# private メソッドは自クラスに別インスタンスを渡した場合、レシーバーの指定が出来ないのでエラーになる。
p2.use_private(p1)

# public => publicに設定されたメソッドは制限なしに呼び出せます。
# protected => protectedに設定されたメソッドは、そのメソッドを持つオブジェクトが selfであるコンテキスト(メソッド定義式や instance_eval )でのみ呼び出せます。
# private => privateに設定されたメソッドは関数形式でしか呼び出せません。(関数形式=レシーバを省略した形式)