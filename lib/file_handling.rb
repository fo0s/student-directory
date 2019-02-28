# file handling
def load_students(filename = "students.csv")
  puts @output_text[:loading]
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    handle_input(name, cohort.to_sym)
  end
  file.close
end

def try_load_students
  filename = ARGV.first
  filename = "students.csv" if filename.nil?
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
  puts @output_text[:saved]
  file.close
end

def input_students
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
