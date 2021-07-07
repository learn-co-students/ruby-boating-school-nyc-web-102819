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

    def add_boating_test(boating_test, status, instructor)
        BoatingTest.new(self, boating_test, status, instructor)
         #should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
    end
    
    def grade_percentage
        passed_test = my_tests.select { |tests| tests.test_status == "passed"}
        passed_test.count.to_f / my_tests.count * 100
         #Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
    end

    def self.find_student(name)
        #Student.find_student will take in a first name and output the student (Object) with that name
        self.all.find { |student| student.first_name = name }
    end

    def my_tests #helper
        BoatingTest.all.select { |tests| tests.student == self}
    end

end
