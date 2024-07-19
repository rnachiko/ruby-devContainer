class Person
    def initialize name, age
        @name = name
        @age = age
    end

    def disp
        puts @name + ":" + @age.to_s
    end
end

p1 = Person.new ARGV[0], ARGV[1].to_i

p1.disp()
