require './lib/print_menus.rb'
require './lib/file_handling.rb'

# TODO:
# 1. Add show sub menu to handle the edits and custom listings
# 2. Impliment clearing of screen to every new menu
# 3. Add more comments to make things clearer
# 4. Use ruby's File handlers more effectively
# 5. FINISH THE BLOODY ASSIGNMENT!!!
# 6. Round off the readme file
# 7.


# menu section
def interactive_menu
  loop do
    case @menu
      when :main
        puts @output_text[:line]
        print_menu(:main)
        puts @output_text[:line]
        process(STDIN.gets.chomp)
    end
  end
end

# make it all work
interactive_menu
