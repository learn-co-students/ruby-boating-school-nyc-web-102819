class Student
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(first_name)
        self.all.select do |each|
            each.name == first_name
        end
    end

    def tests 
        BoatingTest.all.select do |each|
            each.student == self
        end
    end

    def tests_passed
        self.tests.select do |each|
            each.test_status == "passed"
        end
    end

    def tests_failed
        self.tests.select do |each|
            each.test_status == "failed"
        end
    end
    
    def grade_percentage
        passed = self.tests_passed.count.to_f
        all = self.tests.count
        passed/all * 100.0
    end






end
