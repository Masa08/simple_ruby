class Box
    attr_accessor :width, :height, :length

    def initialize(w, h, l)
        @width = w
        @height = h
        @length = l
    end

    def display
        puts "width : #{@width}"
        puts "height : #{@height}"
        puts "length : #{@length}"
        puts "Area of the box is: #{area}"
    end

    private

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

box1 = Box.new(width, height, length)
box1.display