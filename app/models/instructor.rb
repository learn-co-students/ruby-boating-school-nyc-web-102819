class Instructor

attr_accessor :name

@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def pass_student(student, test_name)
       testing = BoatingTest.all.find do |test|
            test.student == student && 
            test.test_name == test_name
        end
            if testing
                testing.test_status = "Passed"
                testing
            else
                BoatingTest.new(student, test_name, "Passed", self)
            end  
    end

    def fail_student(student, test_name)
        testing = BoatingTest.all.find do |test|
            test.student == student && 
            test.test_name == test_name
    end
        if testing
            testing.test_status = "Failed"
            testing
        else
        BoatingTest.new(student, test_name, "Failed", self)
        end  
    end
    end
