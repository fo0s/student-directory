@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name = gets.chomp
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Add new students"
  puts "2. Show the students"
  # Add new menu input to reflect changes
  puts "3. Save the list to a file"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  # Add make file option
  when "3"
    save_students
  when "9"
    puts "Thank you kindly... please come again. Bye!"
    exit
  else
    puts "Not recognised, please try again"
  end
end
# Ability to save everything to a file for future use
def save_students
  # Create the file or open if it exists
  file = File.open("students.csv", "w")
  # Add new lines to the file
  @students.each do |student|
    # Change from hash to array as csv doesn't play well with hash
    student_data = [student[:name], student[:cohort]]
    # Join toget the line
    csv_line = student_data.join(",")
    # Write to the file
    file.puts csv_line
  end
  # Save and close the file
  file.close
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

# Make things work!
interactive_menu
