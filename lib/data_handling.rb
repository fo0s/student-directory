
def print_header
  system 'clear'
  puts "The students of Villains Academy".center(85)
  puts "-" * 85
  puts "|" + "Name".center(20) + "|" + "Cohort".center(20) + "|" + "Hobbie".center(20) + "|" + "Country of birth".center(20) + "|"
  puts "-" * 85
end

def print_footer(names)
  footer = "Overall, we have #{names.count} great student"
  footer += "s" if names.count > 1
  puts footer
end

def print(students)
  if students.empty?
    puts "There is no list to print out"
    exit
  end
  list_by_cohort = list_by_cohort(students)
  list_by_cohort.each do |student|
    puts "|" + student[:name].center(20) + "|" + student[:cohort].center(20) + "|" + student[:hobbie].center(20) + "|" + student[:COB].center(20) + "|"
  end
end

def input_students
  system 'clear'
  puts "Enter a student name.\nPress enter to finish"
  name = STDIN.gets.strip
  while !name.empty? do
    # add the student hash to the array
    add_student(student_additional_info(name))
    puts "Now we have #{@students.count} students"
    name = gets.strip
  end
end

def add_student(input)
 @students << input
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

# not used anymore
def print_using_until(students)
  # students.each do |student|
  #   puts "#{student[:name]} (#{student[:cohort]} cohort)"
  # end
  numbers = 0
  until students.size == numbers
    puts "#{students[numbers][:name]} (#{students[numbers][:cohort].to_s} cohort)"
    numbers += 1
  end
end

def student_additional_info(name)
student_name = name
student_name = "Student" if student_name.empty?
puts "Which cohort is #{student_name} in?"
cohort = gets.chomp
puts "Does #{student_name} have any hobbies? If so please choose one"
hobbie = gets.chomp
# Country of birth
puts "Where was #{student_name} born?"
country_of_birth = gets.chomp
# Error check
cohort = "None" if cohort.empty?
hobbie = "None" if hobbie.empty?
country_of_birth = "None" if country_of_birth.empty?
# return new info
return {name: name, cohort: cohort, hobbie: hobbie, COB: country_of_birth}
end

def typo_check
  valid_student = :false
  valid_index = 0
  puts "-" * 85
  puts "Do you want to change any inputted info?\nPress y for yes otherwise press any other key to exit"
  edit = gets.chomp.downcase
  if edit == "y"
    puts "Please type the name you want to edit"
    edit_name = gets.chomp

    # Check if valid input
    @students.each_with_index do |student, index|
      if student[:name] == edit_name
        valid_student = :true
        valid_index = index
      end
    end
    if valid_student == :true
      puts "Please type new or the same name"
      edit_name = gets.chomp
      @students[valid_index].replace(student_additional_info(edit_name))
      print_all
    else
      puts "Invalid name"
    end
  end
end

def list_by_cohort(students)
  output = []
  # Add month array to cross reference
  month_array = [ "January", "February", "March", "April", "May", "June",
                  "July", "August", "September", "October", "November",
                  "December", "None"  ]
  #Add new each method
  month_array.each do |month|
    students.each do |student|
      # Cross reference the month
      output << student if student[:cohort] == month
    end
  end
  output
end
