# Student-directory

> The week 4 intro to github markdown and running scripts from github

The project required a gradual build up of a ruby program to list
a number of students. It went from a simple puts of students in
step 1, to saving and loading of a file.

The project was very detailed and had step by step instructions
encouraging us to type every bit in instead of copy and pasting.

Detailed below are the steps taken to reach the final product.
Comments are added to newly implemented sections to keep track
of everything.

## How to use ##

```shell
ruby directory.rb
```

## Overview of steps in week 4

### Step 1: Setting up the environment

The basics of creating a new file, creating a new repo on Github
and tying them together. This readme file was created in that first
step and has been updated since.

### Step 2: Printing the list of students

Starts off with simple puts commands of a bunch of evil villains... or heroes
depending on which perspective you take.

> **Added:** A total count of lines in the list

### Step 3: Refactoring

The beginning of making things more stream-lined and [style guide](https://github.com/rubocop-hq/ruby-style-guide) friendly.

> **Added:** First implementation of a variable

### Step 4: Arrays

The implementation of using arrays to store the names. The introduction of the first method to be used; `.each` scrolls through the array and prints out each name on a
separate line.

> **Added:** Dropped the names into an array

> **Added:** .each to cycle through the names

> **Removed:** Hard coded 'puts' of names

### Step 5: Methods

The start of encapsulation... breaking down the code into smaller methods to make the code easier to follow and read. A direct quote from the step:
> "Now that we have extracted the code into the methods, the body of our program reads
> almost like English."
>
> ----Makers week 4 pre-course

Well said.

> **Added** Broke up the code into smaller methods

> **Added** Called the methods to the end in the order we need them

### Step 6: Adding more information

Changed from an 'Array in an array' structure to a 'Hash in a array' structure
in order to hold more info when and if we require it to be stored. Right now
we only store the name and cohort... but the internet loves info and info
we shall give it.

> **Added** Changed students array to hold hash values

> **Added** Adapted print method to deal with the hash values

### Step 7. Asking for user input

The first steps to properly interacting with the program... user input. Also our
first taste of a loop. Gone are the days of having hard coded lists of villains.
Now we can (temporarily) add as many as we want!

> **Added** input_students method to add names to an array.

### Step 8. Exercises

The first part of 2 sections challenging us to add or change sections of the code.

- 1. Add a print_with_index method to print student names with a indexable reference

- 2. Add Method to print off students who's name begins with a specific letter

- 3. Add method to print off students who's name is less than a specified length. Default is 12.

- 4. Replace `.each` in print method using while or until loops. I chose until.

- 5. Make internet happy and add more sections for additional info

- 6. Beautifying output

- 7. So many questions. Added methods to:

  - Check for empty values

  - Apply default values

  - Typo request

- 8. List students by cohort

- 9. Change footer message to accommodate 1 or more students

- 10. Change all `.chomp` to `.strip`

- 11. A typo challenge. Was given a file with multiple typos and we had to fix it with syntax disabled.

- 12. Added an `exit` command if no students are listed

### Step 9. Adding an interactive menu

Adding a bit of bling to a project is never bad thing.
In this section we are adding a menu to push different actions to the project
as we see fit.

> **Added** interactive_menu method with 3 simple options

### Step 10. More refactoring

Refactoring is the process making the code cleaner and more stream-lined.
In this step we look to doing this to the menu. This sets some new problems,
namely having the student variable needed in too many places at once.
Solution? Change it to a instance variable so that everyone can share it. Happy days.

### Step 11. Saving the data to a file

Until this point we lose all the data that gets added every time we exit the program.
No more! Adding the ability to save all that inputted data to a file that we can
load when the program starts is a life saver. Obviously we don't want to advertise
all our villain's names to all of github. Introducing a brief intro to `.gitignore`.

> **Added** New option to the interactive_menu method

> **Added** New save_students method to write to file

### Step 12. Loading the data from the file

Added the ability to load a file with another option on our menu. It's coming
along nicely now.

> **Added** New option to the interactive_menu method

> **Added** New load_students method to open and load the values

### Step 13. Taking arguments from the command line

Pre-defining the file needed before a program starts is quite common practice.
It prevents errors and keeps everything running shipped shaped. Although, for those
of us who forget (or are too plain lazy) to do so, a default value is used. Hooray!

> **Added** Ability to pre-accept commands from the command line

> **Added** Check if a file exists in the directory

### Step 14. More Exercises

The second exercise challenge. And almost the end of week 4 :disappointed:

- 1. Solving a DRY principle by creating a new method

- 2. Adding a students.csv as the default file to load

- 3. More refactoring. Always refactoring. Refactoring for life.

- 4. Add confirmation output for actions and a `sleep(3)` delay

- 5. Made for a more flexible file loading experience on our menu

- 6. Messed around with File class open blocks

- 7. Replacing file handling class File with easier to use CSV class

- 8. Factoring in a [quine](https://rosettacode.org/wiki/Quine)


## Final thoughts

It was fun making making our first end to end program and although
the end product was a nice simple one, it is the beginning of what
I imagine will be more to come.

**Disclaimer** The final product might not reflect the above tutorial
as I might play around with it a bit more adding newer features until
I become bored of it and find something else to do. **Disclaimer**
