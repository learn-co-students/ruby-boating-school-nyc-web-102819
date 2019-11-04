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

  def boating_test(student, test_name)
    b_test = BoatingTest.all.find do |bt|
      bt.student == student && bt.test_name == test_name
    end
    b_test ? (b_test) : (BoatingTest.new(student, test_name, "pending", self))
  end

  def pass_student(student, test_name)
    b_test = boating_test(student, test_name)
    b_test.test_status = "passed"
    b_test
  end

  def fail_student(student, test_name)
    b_test = boating_test(student, test_name)
    b_test.test_status = "failed"
    b_test
  end

end
