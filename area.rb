# ruby 9/14 (homework of 9/13)
class Box
    attr_accessor :width, :height, :length

    # Box.newした時に自動的に実行されるメソッド。引数を3ついれる(w, h, l)。
    def initialize(w, h, l)
        @width = w
        @height = h
        @length = l
    end

    # 計算結果を表示するためのメソッド。
    def display
        # @width,@height,@lengthはinitialize時にすでに値を取得している。
        puts "width : #{@width}"
        puts "height : #{@height}"
        puts "length : #{@length}"
        # ここでprivate内のareaメソッドを呼び出している。
        puts "Area of the box is: #{area}"
    end

    private
    # 計算をするためのメソッド。
    def area
        (2 * @width * @height) + (2 * @width * @length) + (2 * @length * @height)
    end
end

print "Enter width :"
width = gets.to_i

print "Enter height :"
height = gets.to_i

print "Enter length :"
length = gets.to_i

# ここでBoxのオブジェクトを作成。
box1 = Box.new(width, height, length)
# box1のdisplayメソッドを呼び出す。
box1.display