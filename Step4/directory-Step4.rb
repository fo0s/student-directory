# Add array
students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]
# Each method to go though the list
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
    puts student
end
# Print to terminal
puts "Overall, we have #{students.count} great students"
