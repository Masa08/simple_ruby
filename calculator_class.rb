# ruby 9/13
class Calculator
    attr_accessor :first_number, :second_number

    # def initialize(fisrt_number, second_number)
    #     @first_number = fisrt_number
    #     @second_number = second_number
    # end

    def add
        @first_number + @second_number
    end

    def subtract
        @first_number - @second_number
    end

    def multiply
        @first_number * @second_number
    end

    def divide
        @first_number / @second_number
    end

    def modulo
        @first_number % @second_number
    end
end

# オブジェクトの作成。
test = Calculator.new

# first_numberの記入
print "Please enter first_integer:"
test.first_number = gets.to_i

# second_numberの記入
print "Please enter second_integer:"
test.second_number = gets.to_i

# メソッドの呼び出し。
puts "The sum is: #{test.add}"
puts "The subtract is: #{test.subtract}"
puts "The multiply is: #{test.multiply}"
puts "The divide is: #{test.divide}"
puts "The modulo is: #{test.modulo}"