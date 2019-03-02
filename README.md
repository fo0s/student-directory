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

The start of encapsulation... breaking down the code into smaller Methods to make the code easier to follow and read. A direct quote from the step:
> "Now that we have extracted the code into the methods, the body of our program reads
> almost like English."
>
> - Makers week 4 pre-course

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
