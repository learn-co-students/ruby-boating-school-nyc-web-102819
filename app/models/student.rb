class Student
    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def tests
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    def passed_tests
        BoatingTest.all.select do |test|
            test.student == self && test.test_status == "passed"
        end
    end

    def grade_percentage
        self.passed_tests.length.to_f / self.tests.length.to_f * 100
    end

    def self.all
        @@all
    end

    def self.find_student(first_name)
        self.all.select do |student|
            student.first_name == student.first_name
        end
    end
end
