require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#STUDENT: -> :first_name

hector = Student.new("Hector")
uche = Student.new("Uche")

#INSTRUCTOR: -> :name
 
feig = Instructor.new("Dr. Feig")
altman = Instructor.new("Dr. Altman")

#JOINER: BoatingTest -> :student, :test_name, :test_status, :instructor
 
chill_out = BoatingTest.new(hector, "Chill Out", "failed", feig)
breathe = BoatingTest.new(uche, "Breathe", "pending", altman)
power_moves = BoatingTest.new(uche, "Power Moves", "passed", feig)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

