@students = []

@output_text = {
  loading: 'Loading file:',
  saved: 'File has been saved',
  enter_names: "Please enter the names of the students. \nTo finish, just hit return twice.",
  line: '------------------------------',
  header: 'The students of Villains Academy',
  exit: 'Thank you kindly... please come again. Bye!',
  try_again: 'Not recognised, please try again',
  continue: 'Press any key to go back to the menu',
  press_y: 'Press y for yes otherwise press any other key to continue'
}

@main_menu = [
  '1. Add new students', # done
  '2. Show the students',
  '3. Edit or add student details',
  '4. File options',
  '5. Change saved file name',
  '9. Exit'
  ]

@show_menu = [
  '1. Show all students',
  '2. Show students starting with a letter',
  '3. Show students by cohort',
  '4. Edit a student',
  '9. Go back to main menu'
  ]

  @edit_menu = [
    '1. Change the name of a student',
    '2. Add details',
    '3. Delete a student off the list'
  ]

  @file_menu = [
    '1. Save to a file',
    '2. Save a file',
    '3. Change saved file name'
  ]

@print_header = [
  "-" * 60,
  "|" + "".center(58) + "|",
  "|" + "Welcome to the Villians Academy database".center(58) + "|",
  "|" + "".center(58) + "|",
  "-" * 60
  ]
