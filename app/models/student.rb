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
    self.all.find do |student|
      student.first_name == first_name
    end
  end

  def boating_tests
    boating_tests = BoatingTest.all.select do |b_test|
      b_test.student == self
    end
  end

  def grade_percentage
    passed = 0.0
    failed = 0.0
    boating_tests.each do |b_test|
      passed += 1 if b_test.test_status == "passed";
      failed += 1 if b_test.test_status == "failed"
    end
    passed / (passed + failed) * 100
  end

end
