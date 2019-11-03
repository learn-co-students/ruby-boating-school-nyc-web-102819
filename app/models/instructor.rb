class Instructor

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end 

    def pass_student(student, boating_test_name, boating_test)
        if BoatingTest.all.find { |bt| bt.student == student && bt.boating_test_name == boating_test_name } #there is a boating test whose name and student match the values passed in
            boating_test.boating_test_status = "passed"
            boating_test
        else
            BoatingTest.new(student, boating_test_name, "passed", self)
        end 

        # if there is a boating test whose name and student match the values passed in, update the status to "passed"
        # if there is no matching test, this should create a test with the student, boat test name, and the status "passed"
        # either way, it should return the boating test instance 
        
    end 

    def fail_student(student, boating_test_name, boating_test)
        if BoatingTest.all.find { |bt| bt.student == student && bt.boating_test_name == boating_test_name }
            boating_test.boating_test_status = "failed"
            boating_test
        else 
            BoatingTest.new(student, boating_test_name, "failed", self) 
        end 
    end 

    def self.all
        @@all
    end 

end
