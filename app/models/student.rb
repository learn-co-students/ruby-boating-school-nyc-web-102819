class Student
    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def tests_taken
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    def instructors_taken
        tests_taken.map do |test|
            test.instructor
        end
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        self.all.select do |student|
            student.first_name == name
        end
    end

    def grade_percentage
        student_test = BoatingTest.all.find_all { |test| test.student.first_name == self.first_name}
        total = student_test.length.to_f
        passed_total = student_test.find_all { |test| test.test_status == "passed" }
        passed_num = passed_total.length.to_f
        percent = (passed_num / total) * 100
    end


end
