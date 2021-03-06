def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

# Added menu system
def interactive_menu
  students = []
  loop do
    # Print menu to terminal
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    # Ask for selection
    selection = gets.chomp
    # Process selection
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # Close all and exit
    else
      puts "I don't know what you meant, try again"
    end
  end
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

interactive_menu
print_header
print(students)
print_footer(students)
