def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(names)
  names.each do |name|
    puts name
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

# step 8 additions

def print_with_index(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_by_start_letter(students, letter)
  students.each do |student|
    # Only print out students who's name starts with given input
    puts "#{student[:name]}" if student[:name].start_with?(letter)
  end
end

def print_by_name_size(students, size)
  name_size = size
  name_size = 12 if name_size.empty?
  students.each do |student|
    # Only print out students names that are shorter than given number. Default is 12
    puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:name].size < name_size
  end
end
