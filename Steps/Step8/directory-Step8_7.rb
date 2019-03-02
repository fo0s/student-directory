def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    # Addition of cohort input
    puts "Which cohort is #{name} in?"
    cohort = gets.chomp
    # Check if empty
    cohort = "None" if cohort.empty?
    # Check for typos
    puts "#{name} (#{cohort} cohort), is this correct? y for yes, n for no."
    # Check for inconsistent confirmation
    confirmation = gets.downcase.chomp
    while confirmation != "y" && confirmation != "n"
      puts "I don't recognise that."
      puts "If the above info is correct, press y. Otherwise press n to change"
      confirmation = gets.downcase.chomp
    end
    # Save info if true
    if confirmation == "y"
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
print_header
print(students)
print_footer(students)
