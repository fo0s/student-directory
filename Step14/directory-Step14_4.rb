# instance variable
@students = []

# Add output items
@output_text = {
  :loading => "Loading file.",
  :saved => "File has been saved",
  :enter_names => "Please enter the names of the students. \nTo finish, just hit return twice.",
  :line => "------------------------------",
  :header => "The students of Villains Academy",
  :exit => "Thank you kindly... please come again. Bye!",
  :try_again => "Not recognised, please try again",
  :continue => "Press any key to go back to the menu"
}

@print_menu = [
                "1. Add new students",
                "2. Show the students",
                "3. Save the list to a file",
                "4. Load the students from a file",
                "9. Exit"
              ]

# file handling
def load_students(@filename = "students.csv")
  puts @output_text[:loading]
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    handle_input(name, cohort.to_sym)
  end
  file.close
end

def try_load_students
  @filename = ARGV.first
  @filename = "students.csv" if @filename.nil?
  if File.exists?(@filename)
    load_students(@filename)
    puts "Loaded #{@students.count} from #{@filename}"
  else
    puts "Sorry, #{@filename} doesn't exist."
    exit
  end
end

def rename_file

end

# input of values
def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  puts @output_text[:saved]
  file.close
end

def input_students
  # Implimented clear screen to see list more clearly
  system "clear"
  puts @output_text[:enter_names]
  name = STDIN.gets.chomp
  while !name.empty? do
    handle_input(name, :November)
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
end
def handle_input(name, cohort)
 @students << {name: name, cohort: cohort}
end

# menu section
def interactive_menu
  try_load_students
  loop do
    puts @output_text[:line]
    @print_menu.each { |menu_item| puts menu_item }
    puts @output_text[:line]
    process(STDIN.gets.chomp)
  end
end

def show_students
  # Clear screen to see the list more clearly
  system "clear"
  puts @output_text[:header]
  puts @output_text[:line]
  print_student_list
  print_footer
  puts @output_text[:line]
  puts @output_text[:continue]
  # Added pause
  gets
  system "clear"
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
  when "5"
    rename_file
  when "9"
    puts @output_text[:exit]
    exit
  else
    puts @output_text[:try_again]
  end
end

# print section
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
