class Student

    attr_accessor :first_name 

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self 
    end 

    def add_boating_test(boating_test_name, boating_test_status, instructor)
        BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
    end 

    def all_tests
        BoatingTest.all.select { |bt| bt.student == self }
    end 

    def passed_tests
        all_tests.select { |bt| bt.boating_test_status == "passed"}
    end 

    def grade_percentage
        #should return the percentage of tests that the student has passed 
        #so if a student's boating_test_status= "passed" 3/9 times, it should return a float of 33.33 

        #get an array of all of the student's tests. how long is it?
        #make an array of all of the passing ones. how long is it?  
        #divide length of passed tests array by length of total tests array
        self.passed_tests.length.to_f / self.all_tests.length.to_f * 100
    end 

    def self.find_student(name)
        self.all.find { |student| student.first_name = name }
    end 

    def self.all
        @@all
    end 

end
