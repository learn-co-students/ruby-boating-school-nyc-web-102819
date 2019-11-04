require 'pry'

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

    def pass_student(student, test_name)
        if BoatingTest.all.find {|boatingtest_obj| boatingtest_obj.instructor == self && boatingtest_obj.student == student && boatingtest_obj.boating_test_name == test_name}
            target = BoatingTest.all.select {|boatingtest_obj| boatingtest_obj.instructor == self && boatingtest_obj.student == student && boatingtest_obj.boating_test_name == test_name}.uniq
            # binding.pry
            target[0].boating_test_status = "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
    end

    def fail_student(student, test_name)
        if BoatingTest.all.find {|boatingtest_obj| boatingtest_obj.instructor == self && boatingtest_obj.student == student && boatingtest_obj.boating_test_name == test_name}
            target = BoatingTest.all.select {|boatingtest_obj| boatingtest_obj.instructor == self && boatingtest_obj.student == student && boatingtest_obj.boating_test_name == test_name}.uniq
            # binding.pry
            target[0].boating_test_status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end
    end

end
