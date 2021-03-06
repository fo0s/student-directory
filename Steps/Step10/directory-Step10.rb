@students = [] # Changed to instance variable carrying an array

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

# Compress the menu
def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

# Turn the menu into a method so we can add or delete as we like
def print_menu
  puts "1. Add new students"
  puts "2. Show the students"
  puts "9. Exit"
end

# Add an output method
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
  when "9"
    puts "Thank you kindly... please come again. Bye!"
    exit # Stop everything and exit out of the program
  else
    # Error checking
    puts "Not recognised, please try again"
  end
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
