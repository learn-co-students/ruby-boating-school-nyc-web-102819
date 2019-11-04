require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

patrick = Student.new("Patrick")
sponge = Student.new("Sponge")
sandy = Student.new("Sandy")

puff = Instructor.new("Puff")
crabs = Instructor.new("Crabs")

BT1 = BoatingTest.new(patrick, "BT 5", "Failed", puff)
BT2 = BoatingTest.new(patrick, "BT 7", "Passed", puff)
BT3 = BoatingTest.new(sponge, "BT 600", "Failed", crabs)
BT4 = BoatingTest.new(sponge, "BT 700", "Failed", puff)
BT5 = BoatingTest.new(sponge, "BT 800", "Passed", crabs)
BT6 = BoatingTest.new(sandy, "BT 1", "Failed", crabs)
BT7 = BoatingTest.new(sandy, "BT 2", "Passed", puff)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

