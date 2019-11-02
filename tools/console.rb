require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
barak = Student.new("Barak")
carlos = Student.new("Carlos")
tim = Student.new("Tim")

steve = Instructor.new("Steven")
dana = Instructor.new("Dana")

# student, name, status, instructor
test1 = BoatingTest.new(barak,"Mod1 -test", "not-graded", steve)
test2 = BoatingTest.new(carlos,"abc", "not-graded", dana)

# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

