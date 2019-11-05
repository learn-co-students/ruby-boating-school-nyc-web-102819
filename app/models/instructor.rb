class Instructor
    attr_accessor :instructor, :student, :test_name, :test_status
    @@all = []

    def initialize(instructor)
        @instructor = instructor
        @@all << self
    end
###############
    def self.all
        @@all
    end

    def all_tests                       #helper method
        BoatingTest.all                 #array of all tests
    end
    
    def pass_student(student, test_name)
        all_tests.find do |test|
            if test.student && test.test_name
            else
                BoatingTest.new(student, test_name, test_status, self)
            end
            test.test_status = "passed"
        end   
    end

    def fail_student(student, test_name)
        all_tests.find do |test|
            if test.student && test.test_name
            else
                BoatingTest.new(student, test_name, test_status, self)
            end
            test.test_status = "failed"
        end   
    end
end
