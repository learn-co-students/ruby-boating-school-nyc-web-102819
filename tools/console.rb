require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff = Instructor.new("Puff")
krabs = Instructor.new("Krabs")

no_crashing = BoatingTest.new(spongebob, "Don't Crash 101", "failed", puff)
power_steering = BoatingTest.new(patrick, "Power Steering 101", "failed", puff)
braking = BoatingTest.new(spongebob, "Braking 101", "passed", krabs)
e_brake = BoatingTest.new(spongebob, "E-brake", "failed", puff)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

