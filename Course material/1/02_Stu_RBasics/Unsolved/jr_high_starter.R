# Part I
students <- c("Student1", "Student 2", "Student 3")
class2 <- c("Student5", "Student 6", "Student 7")
roll_call <- function(class){
  print(Sys.Date())
  # Create a for loop 
 for(s in class)
 {
   print (s)
 }
}

# Call the function with the student vector as an argument.

roll_call(students)
roll_call(class2)

# Part II
locker_combinations <- function(class){
 
   # Create the for loop and print the student name and locker combination.
  for(student in class) {
    combination=sample(33,3)
    print(student)
    print(combination)
  }
  
}

# Call the function with the student vector as an argument.
locker_combination(students)

# Part III
for (student in students){
  # Create a variable (substring)  that holds the second letter for each student.
second_letter <- substr(student,2,2)
  # Create an if statement to find the names of students where the 
  # second letter that is an "e". 
if (second_letter == 'e'){
  print(student)
  combination <- sample(33:66,3)
  print(combination)
}

  
}
