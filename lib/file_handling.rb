def save_students
  CSV.open(@filename, "wb") do |csv|
    @students.each do |student|
      save_data = [student[:name], student[:cohort], student[:hobbie], student[:COB]]
      csv << save_data
    end
  end
  file_message("File Saved!")
end

def load_students
  CSV.foreach(@filename) do |row|
    name, cohort, hobbie, cob = row
    add_student({name: name, cohort: cohort, hobbie: hobbie, COB: cob})
  end
  file_message("#{@filename} loaded!")
end

def try_load_students
  @filename = ARGV.first || "students.csv"
  File.exists?(@filename) ? load_students : load_failure
end

def file_message(output)
  puts output
  sleep(2)
  system 'clear'
end

def load_failure
  puts "Sorry, #{@filename} doesn't exist. Do you want to create it?
                \nPress y for yes otherwise any other key to exit."
  confirm = gets.strip
  confirm == "y" ? input_students : exit
end

def student_quine
  f = File.open __FILE__
  f.each_line { |line| puts line }
  f.close
end
