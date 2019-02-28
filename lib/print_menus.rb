# instance variable
@students = []

# Add output items
@output_text = {
  loading: 'Loading file.',
  saved: 'File has been saved',
  enter_names: "Please enter the names of the students. \nTo finish, just hit return twice.",
  line: '------------------------------',
  header: 'The students of Villains Academy',
  exit: 'Thank you kindly... please come again. Bye!',
  try_again: 'Not recognised, please try again',
  continue: 'Press any key to go back to the menu'
}

@main_menu = [
  '1. Add new students',
  '2. Show the students',
  '3. Save the list to a file',
  '4. Load the students from a file',
  '5. Change saved file name',
  '9. Exit'
  ]

@show_menu = [
  '1. Edit a name',
  '2. Add details to a name',
  '3. Show name by letter',
  '4. Show name by size'
]

def show_students
  system 'clear'
  puts @output_text[:header]
  puts @output_text[:line]
  print_student_list
  print_footer
  puts @output_text[:line]
  puts @output_text[:continue]
  gets
  system 'clear'
end

def process(selection)
  case selection
  when '1'
    # Add student names to the list
    input_students
  when '2'
    # Show list of students, ability to edit if needed
    show_students
  when '3'
    save_students
  when '4'
    load_students
  when '9'
    puts output_text[:exit]
    exit
  else
    puts output_text[:try_again]
  end
end

def print_menu(section)
  case section
  when "main"
    @main_menu.each { |menu_item| puts menu_item }
  else
  end
end

# print section
def print_student_list
  @students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end
