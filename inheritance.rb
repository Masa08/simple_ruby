# 親クラスPerson。
class Person
    def speak
        puts "Hello"
    end

    protected
    def walk
        puts "walking"
    end

    private
    def dance
        puts "dancing"
    end
end

# 子クラスTeacher。TeacherもPersonである(この世に存在する教師は基本的には全員人間です)ので、Teacher.newで作られたオブジェクトでもPersonクラスで定義されたメソッドは使用したい。
# 子クラス < 親クラスという指定を書いてあげることで、子クラスからでも親クラスのメソッドを呼び出すことが可能になる。
class Teacher < Person
    def teach
        puts "I am teaching"
        walk
        dance
    end
end

person1 = Person.new
person1.speak
# 親クラスからは子クラスのメソッドは呼び出すことができない
# person1.teach

teacher1 = Teacher.new
# 親クラスのメソッドの呼び出し。
teacher1.speak
# もちろん子クラスのメソッドも呼び出すことができる。
# また子クラスから親クラスのprotectedメソッドとprivateメソッドにアクセス可能。
teacher1.teach