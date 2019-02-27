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
  puts "3. Save the list to a file"
  # Add new entry to reflect changes
  puts "4. Load the students from a file"
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
  when "3"
    save_students
  # Add new entry
  when "4"
    load_students
  when "9"
    puts "Thank you kindly... please come again. Bye!"
    exit
  else
    puts "Not recognised, please try again"
  end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  puts "File has been saved"
  file.close
end
# Added ability to load a saved file
def load_students
  puts "Loading file"
  # Open the file with "read" privilages
  file = File.open("students.csv", "r")
  # Go through each line of the file
  file.readlines.each do |line|
    # .. picking out the name and cohort columns
    name, cohort = line.chomp.split(',')
    # Add them to the student variable as a hash
    @students << {name: name, cohort: cohort.to_sym}
  end
  # Close the file
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
