require './lib/print_menus.rb'
require './lib/file_handling.rb'

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

# make it all work
interactive_menu
