class Student

    attr_accessor :first_name, :last_name
    
    @@all= []
    
    def initialize(first_name)
    @first_name = first_name
    @@all << self
    end
    
    def self.all
      @@all
    end

    def add_boating_test(name, status, instructor)
    #     #should initialize a new boating test with a Student (Object),
    #     #a boating test name (String), a boating test status (String),
    #     #and an Instructor (Object)
    
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(name)
        self.all.find do |student|
            student.first_name == name
        end
    end

    def grade_percentage
        # find the tests for specific student we call this method on though all of the BoatingTests
        student_test = BoatingTest.all.find_all { |test| test.student.first_name ==  self.first_name }
        total_tests = student_test.length.to_f
        total_passed = student_test.find_all {|test|test.status ==  "passed"}
        num_passed  = total_passed.length.to_f
        percentage = (num_passed/total_tests)*100
    end


end
