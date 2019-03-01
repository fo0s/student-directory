require './lib/messages.rb'

# file handling

def check_for_files
  files = Dir.glob("*.csv")
  files.empty? ? :none : files
end

def load_students(filename)
  puts "#{@output_text[:loading]} #{filename}"
  file = File.open(filename, "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    handle_input(name, cohort.to_sym)
  end
  file.close
  sleep(2)
  interactive_menu(:main)
end

def loading_check(files)
  create_new_file if files == :none
  puts "There are #{files}.count files detected.\nDo you want to load one?" if files.count > 1
  puts "There is 1 file detected.\nDo you want to load it?" if files.count == 1
  puts @output_text[:press_y]
  if gets.downcase.strip ==  "y"
    if files.count == 1
      load_students(files.first)
    else
      files.each { |file_name| puts file_name }
      puts "Please type in the file you want to use:"
      selection = gets.strip
      load_students(selection)
    end
  else
    interactive_menu(:main)
  end
end

def create_new_file
  puts "No file detected. Should we create a new one?"
  @output_text[:press_y]


end

# def try_load_students
#   @filename = ARGV.first
#   @filename = "students.csv" if @filename.nil?
#   if File.exists?(@filename)
#     load_students(@filename)
#     puts "Loaded #{@students.count} from #{@filename}"
#   else
#     puts "Sorry, #{@filename} doesn't exist."
#     exit
#   end
# end

# write to file
def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  puts @output_text[:saved]
  file.close
  sleep(2)
  interactive_menu(:main)
end
