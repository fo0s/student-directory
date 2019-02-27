def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  # Check if exit, otherwise add name
  while !name.empty? do
    # Addition of cohort input
    puts "Which cohort is #{name} in?"
    cohort = gets.chomp
    # Check if empty
    cohort = "None" if cohort.empty?
    # Check for typos
    puts "#{name} (#{cohort} cohort), is this correct? y for yes, n for no."
    if gets.chomp == "y"
      students << {name: name, cohort: cohort.to_sym}
      puts "Now we have #{students.count} students"
    end
    puts "Please enter a name or press return to exit."
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
