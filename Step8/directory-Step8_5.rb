def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  # Check if exit, otherwise add name
  while !name.empty? do
    # Added sections
    puts "Does #{name} have any hobbies? If so please choose one"
    hobbie = gets.chomp

    puts "Where was #{name} born?"
    country_of_birth = gets.chomp

    puts "How tall is #{name}?"
    height = gets.chomp
    students << {name: name, cohort: :november, hobbie: hobbie, COB: country_of_birth, height: height}
    puts "Now we have #{students.count} students"
    puts "Please enter another name or press enter to exit"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
