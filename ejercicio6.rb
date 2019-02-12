module Test
    
    def result
       if (@grade_one.to_f + @grade_two.to_f) / 2.to_f > 4.to_i
        puts "Estudiante #{@name} aprobado"
       else
        puts "Estudiante #{@name} reprobado"
       end
    end
    
end

module Attendance

    def student_quantity

     puts "#{Student.get_number_of_instance}"

    end

end

class Student

    @@quantity = 0

    def initialize(name, grade_one = 4.to_i, grade_two = 4.to_i)
        @name = name
        @grade_one = grade_one
        @grade_two = grade_two
        @@quantity += 1

    end
    
    def self.get_number_of_instance
        @@quantity
    end
    
    include Test
    extend Attendance

    
end

def get_random_string(length=5)
    source=("a".."z").to_a 
    key=""
    length.times{ key += source[rand(source.size)].to_s }
    return key
  end

estudiantes = []

10.times do
    estudiantes << Student.new(get_random_string, rand(1..7), rand(1..7)) 

end

p estudiantes
estudiantes.each {|i| i.result}
