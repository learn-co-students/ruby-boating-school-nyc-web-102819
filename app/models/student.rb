class Student
    attr_reader :student
    @@all = []

    def initialize (student)
        @student = student
        @@all << self
    end
#############
    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        all.find do |student|
            student.first_name == name
        end
    end

    def all_student_tests
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    def grade_percentage
        pass = all_student_tests.count do |test|
            test.test_status == "passed"
        end
        (pass.to_f/all_student_tests.count.to_f)*100
        # binding.pry

    end

end
