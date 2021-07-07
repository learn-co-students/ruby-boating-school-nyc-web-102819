class Instructor
    attr_reader :name

    @@all = []
    def initialize (name)
        @name = name
        
        @@all << self
    end

    def self.all 
        @@all 
    end

    

    def pass_student(student, test)
        if passed_student = BoatingTest.all.find { |bts| bts.student == student && bts.test_name == test }
            passed_student.test_status = "passed"   
        else
            create_pass_student(student, test)
        end
         #If there is a BoatingTest whose name and student match the values passed in, 
         #this method should update the status of that BoatingTest to 'passed'. 
         #If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.
    end

    def fail_student(student, test)
        if passed_student = BoatingTest.all.find { |bts| bts.student == student && bts.test_name == test }
            passed_student.test_status = "failed"   
        else
            create_fail_student(student, test)
        end    
    end

    def create_pass_student(student, test)
        BoatingTest.new(student, test, "passed", self)
    end

    def create_fail_student(student, test)
        BoatingTest.new(student, test, "failed", self)
    end
end
