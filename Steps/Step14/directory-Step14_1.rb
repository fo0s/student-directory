# instance variable
@students = []

# file handling
def load_students(filename = "students.csv")
  puts "Loading file"
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    # Updated to handle new method
    handle_input(name, cohort.to_sym)
  end
  file.close
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist."
    exit
  end
end

# input of values
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

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
  while !name.empty? do
    # Updated to handle new method
    handle_input(name, :November)
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
end
# Added new method because of DRY violation
def handle_input(name, cohort)
 @students << {name: name, cohort: cohort}
end

# menu section
def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "1. Add new students"
  puts "2. Show the students"
  puts "3. Save the list to a file"
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
  when "4"
    load_students
  when "9"
    puts "Thank you kindly... please come again. Bye!"
    exit
  else
    puts "Not recognised, please try again"
  end
end

# print section
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

# make it all work
interactive_menu
