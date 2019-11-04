class Instructor
    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def pass_student(student, test_name)
        passing_test = BoatingTest.all.find do |test|
            test.student == student && test.test_name == test_name
        end
        if passing_test
            passing_test.test_status = "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)
        failing_test = BoatingTest.all.find do |test|
            test.student == student && test.test_name == test_name
        end
        if failing_test
            failing_test.test_status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

    def self.all
        @@all
    end
end
