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

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  # students.each do |student|
  #   puts "#{student[:name]} (#{student[:cohort]} cohort)"
  # end
  numbers = 0
  # Use an alternative to each or map. until will do for now.
  until students.size == numbers
    puts "#{students[numbers][:name]} (#{students[numbers][:cohort].to_s} cohort)"
    numbers += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
