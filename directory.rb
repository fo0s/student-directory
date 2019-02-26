# # let's put all students into an array
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex DeLarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november}
# ]
#
# def print_header
#   puts "The students of Villains Academy"
#   puts "-------------"
# end
# def print(students)
#   students.each do |student|
#     puts "#{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end
# def print_footer(names)
#   puts "Overall, we have #{names.count} great students"
# end
# #nothing happens until we call the methods
# print_header
# print(students)
# print_footer(students)

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit the return twice"
  students = []
  name = gets.chomp

  while !name.empty? do
    # Info collecting

    puts "Any hobbies?"
    hobbie = gets.chomp

    puts "Country of birth?"
    cob = gets.chomp

    puts "Height?"
    height = gets.chomp

    students << {name: name, cohort: :november, hobbie: hobbie, birth_country: cob, height: height}

    puts "Now we have #{students.count} students"
    name = gets.chomp

  end
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(students)
  # Step 8, Question 1: students.each_with_index do |student, index|
  students.each do |student|
    # Step 8, question 1: puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    # Step 8, Question 2: puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].start_with?("B")
    # Step 8, Question 3: puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].size < 12
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# Step 8, Question 4:
# def print(students)
#   count = 0
#   while count < students.size
#     puts "#{students[count][:name]} (#{students[count][:cohort]} cohort)"
#     count += 1
#   end
# end

def extra_info
  puts "Any hobbies?"

end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
