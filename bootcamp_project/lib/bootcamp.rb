class Bootcamp
# PART 1
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new{ |k,v| k[v]=[]}
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def grades
        @grades
    end

    def hire(new_teacher)
        @teachers << new_teacher
    end

    def enroll(new_student)
        if @students.length < @student_capacity
            @students << new_student
            return true
        else
            return false
        end
    end

    def enrolled?(student_name)
        @students.include?(student_name)
    end
#PART 2
    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(student_name, grade_num)
        if @students.include?(student_name)
            @grades[student_name] << grade_num
            true
        else
            false
        end
    end

    def num_grades(student_name)
        @grades[student_name].length
    end

    def average_grade(student_name)
        if enrolled?(student_name) && @grades[student_name].length > 0
            @grades[student_name].sum / @grades[student_name].length
        end
    end
end
