# ruby 9/13 made by masa
class Test
    # public
    def public
        puts "public!"
    end

    def internal_use_private_and_protected
        protected
        private
    end

    def internal_use_private_and_protected_with_reciever
        self.protected
        self.private
    end

    def use_protected(op)
        op.protected
    end

    def use_private(op)
        op.private
    end

    protected
        # protected
        def protected
            puts "protected!"
        end

    private
        # private
        def private
            puts "private!"
        end
end

p1 = Test.new
p2 = Test.new

# 以下、コードのコメントアウトを外しながら確認してみてください。

# [外部からの呼び出しに関して]
# publicは外部から呼び出すことができる。
# p2.public

# protectedメソッド、privateメソッドともに、外部から呼び出すことはできない。
# p2.protected
# p2.private

# [内部からの呼び出しに関して]
# 両メソッド、内部からの利用は可能。
# p2.internal_use_private_and_protected

# protectedはレシーバーつきでも呼び出し可能。
# privateはレシーバーつきだと呼び出せず。
# p2.internal_use_private_and_protected_with_reciever

# protectedメソッドは自クラスに別インスタンスを渡しても呼び出し可能。
# p2.use_protected(p1)

# privateメソッドは自クラスに別インスタンスを渡した場合、レシーバーの指定が出来ないのでエラーになる。
# p2.use_private(p1)

# 解説
# 各メソッドの役割
# public => publicに設定されたメソッドは制限なしに呼び出せます。
# protected => class外からは呼び出せない。class内から呼び出すことはできる(レシーバーあるなしどちらも)。
# private => class外からは呼び出せない。class内から呼び出すことはできるがレシーバー付きで呼び出すことはできない。関数形式(=レシーバを省略した形式)でのみ呼び出すことが可能。

# protectedを使うタイミング(公式リファレンスより)
# private と protected は同じ目的(そのメソッドを隠し外から呼べないようにする)で使用されますが、以下のような例では、private は使えず、protected を利用する必要があります。
# 正確には、private には関数を定義する目的があるが、呼び出し制限の目的でも(ここに挙げた制限があるにもかかわらず) protected よりは private が使われることの方が多いようです。
# class Foo
#     def _val
#         'val'
#     end
#     protected :_val

#     def op(other)
#         # other も Foo のインスタンスを想定
#         # _val が private だと関数形式でしか呼べないため
#         # このように利用できない

#         self._val + other._val
#     end
# end

# => 上記みたいにクラス内で自身と他のインスタンス両方で呼び出したいメソッドがあるような場合には使えるっぽい。

# 補足
# 使い分けに関するMatzさんの意見
# つまり，privateは自分からしか見えないメソッドであるのに対し
# て，protectedは一般の人からは見られたくないが，仲間(クラスが
# 同じオブジェクト)からは見えるメソッドです．
# protectedは例えば2項演算子の実装にもう一方のオブジェクトの状
# 態を知る必要があるか調べる必要があるが，そのメソッドをpublic
# にして，広く公開するのは避けたいというような時に使います．