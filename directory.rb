require './lib/vars.rb'
require './lib/data_handling.rb'

def print_all
  print_header
  print(@students)
  puts "-" * 85
  print_footer(@students)
  typo_check
end

@students = input_students
print_all
