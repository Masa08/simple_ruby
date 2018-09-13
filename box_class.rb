class Box
    # initializeメソッドはclass_name.newした時に、自動で実行される。
    def initialize(width, height)
        @width = width
        @height = height
    end

    # ex) Box.new(10, 5)の場合。
    def display
        @width # == 10
        @height # == 5
    end

    def sample
        @width + @height # == 10 + 5 = 15
    end
end

# About box1
# class_name.new => initializeメソッドが実行される。
puts box1 = Box.new(10,5)
# メソッドを呼び出すためにはclass_name.method_nameのようにして呼び出す。
puts box1.display
puts box1.sample

# About box2
puts box2 = Box.new(20,20)
puts box2.display