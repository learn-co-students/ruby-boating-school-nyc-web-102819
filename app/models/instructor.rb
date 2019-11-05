class Instructor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def tests_instructed
        BoatingTest.all.select do |test|
            test.instructor == self
        end
    end

    def students_instructed
        tests_instructed.map do |test|
            test.student
        end
    end

    def matched_test(student, test_name)
        BoatingTest.all.find { |test| test.student.first_name == student.first_name && test.test_name == test_name }
    end

    def pass_student(student, test_name)
        matched_test(student, test_name) ? matched_test.test_status = "passed" : BoatingTest.new(student, test_name, "passed", self)
    end

    def fail_student(student, test_name)
        matched_test(student, test_name) ? testtofail.test_status = "failed" : BoatingTest.new(student, test_name, "failed", self)
    end

end
