# handling of the student data

def input_students
  system "clear"
  puts @output_text[:enter_names]
  name = STDIN.gets.chomp
  while !name.empty? do
    handle_input(name, :November)
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
  interactive_menu(:main)
end

def handle_input(name, cohort)
 @students << {name: name, cohort: cohort}
end
