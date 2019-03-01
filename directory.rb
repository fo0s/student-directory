require './lib/student_file_handling.rb'
require './lib/student_data.rb'
require './lib/messages.rb'

def print_header
  system 'clear'
  @print_header.each { |line| puts line }
end

def print_menu(menu)
  case menu
  when :main
    puts "|" + "Current menu: Main".center(58) + "|"
    puts "-" * 60
    @main_menu.each { |item| puts "|" + item.ljust(58) + "|"}
  when :show
    puts "|" + "Current menu: Show the students".center(58) + "|"
    puts "-" * 60
    @show_menu.each { |item| puts "|" + item.ljust(58) + "|"}
  end
  puts "-" * 60
  puts "Please choose a number: "
end

def process_main(selection)
  case selection
  when '1'
    # Add student names to the list
    input_students
  when '2'
    # print show show sub menu
    interactive_menu(:show)
  when '3'
    save_students
  when '4'
    loading_check(check_for_files)
  when '9'
    puts output_text[:exit]
    exit
  else
    puts output_text[:try_again]
  end
end

def process_show(selection)
  case selection
  when '1'

  when '2'

  when '3'

  when '4'

  when '9'
    interactive_menu(:main)
  else
    puts output_text[:try_again]
  end

end

def interactive_menu(menu)
  case menu
  when :main
    # print main menu
    print_header
    print_menu(:main)
    process_main(gets.strip)

  when :show
    print_header
    print_menu(:show)
    process_show(gets.strip)
    # print_student_list
    # print_footer

  when :welcome
    # print welcome screen and load files to memory
    print_header
    load_students(check_for_files.first)
    sleep(2)
    interactive_menu(:main)
  end

end

interactive_menu(:welcome)
