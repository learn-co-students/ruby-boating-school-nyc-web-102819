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

    def add_boating_test(student, test_name, test_status, instructor)
        BoatingTest.new(student, test_name, 
        test_status, instructor)
    end

    def self.find_student(first_name)
        self.all.find { |person| 
        person.first_name == first_name}
    end

    def grade_percentage
        #get all tests
        #filter by student
        #divide passing tests by total
        tests = BoatingTest.all.select do |test|
        test.student == self
        end
        passed_tests = tests.select do |test|
            test.test_status == "Passed"
        end
        percentage = passed_tests.length.to_f / tests.length.to_f
        percentage
    end
end
