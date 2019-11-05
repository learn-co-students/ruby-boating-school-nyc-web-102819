require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# students 
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

# instructors
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
# test
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

# find student
find1 = Student.find_student("Spongebob")
find2 = Student.find_student("Patrick")

# pass student
pass1 = puff.pass_student(spongebob,"Don't Crash 101")
pass2 = puff.pass_student(patrick,"Don't Crash 101")

# fail student
fail1 = krabs.fail_student(spongebob,"Power Steering 201")
fail2 = krabs.fail_student(patrick,"Power Steering 201")



binding.pry

puts "EXIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIT EXIT EXIT EXIT"