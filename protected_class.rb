# ruby 9/13
class Person
    def older_than?(other_person)
        age > other_person.age
        # p2.age = 25 > p1.age = 21
    end

    # public
    def jump
        "I'm junping!"
    end

    def action(other_person)
        puts other_person.jump
        # p2 is current object
    end

    def age=(age)
        @age = age
    end

    protected
    def age
        @age
    end

    private
    def walk
        "I'm walking"
    end
end

class Teacher < Person

end

p1 = Person.new
p1.age = 21
# puts p1.jump
# puts p1.age

p2 = Person.new
p2.age = 25

p2.action(p1)