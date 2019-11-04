class Student

end
class Student
    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(first_name)
        student_objs = BoatingTest.all.map {|boatingtest_obj| boatingtest_obj.student}
        student_objs.select {|student_obj| student_obj.first_name == first_name}.uniq
    end

    def grade_percentage
        my_boating_tests = BoatingTest.all.select {|boatingtest_obj| boatingtest_obj.student == self}
        passed_boating_tests = my_boating_tests.select {|boatingtest_obj| boatingtest_obj.boating_test_status == "passed"}
        (passed_boating_tests.length.to_f / my_boating_tests.length).round(2)
    end
end