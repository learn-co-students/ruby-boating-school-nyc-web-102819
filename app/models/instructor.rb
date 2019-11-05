class Instructor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def test_given?(student, test_name)
        BoatingTest.all.any? do |each| 
            each.instructor == self &&
            each.student == student &&
            each.test_name == test_name
        end

    end



    def pass_student(student,test_name)
        
        test_given = BoatingTest.all.any? do |each| 
            each.instructor == self &&
            each.student == student &&
            each.test_name == test_name
        end

        if test_given
            BoatingTest.all.select do |each|
                each.test_status = "passed" if each.instructor == self &&
                each.student == student &&
                each.test_name == test_name
                
            end
        else
            BoatingTest.new(student, test_name, "passed", self)
        end

    end
    

    def fail_student(student,test_name)
        
        test_given = BoatingTest.all.any? do |each| 
            each.instructor == self &&
            each.student == student &&
            each.test_name == test_name
        end

        if test_given
            BoatingTest.all.select do |each|
                each.test_status = "failed" if each.instructor == self &&
                each.student == student &&
                each.test_name == test_name
                
            end
        else
            BoatingTest.new(student, test_name, "failed", self)
        end

    end
    


end
