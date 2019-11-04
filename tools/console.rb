require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end




spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

# boating_test1 = BoatingTest.new(spongebob, "Don't Crash 101", "passed", puff)
# boating_test3 = BoatingTest.new(spongebob, "myfirsttest", "failed", puff)
# boating_test4 = BoatingTest.new(spongebob, "mysecondtest", "failed", puff)
# boating_test2 = BoatingTest.new(patrick, "Don't Crash 101", "pending", puff)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

