# Some swift algorithms in xcode playgrounds

## Swift Algorithms 1.playground

### Exercise 1:
Create a program that is able to determine whether any positive integer is a prime number or not.

### Exercise 2:
Create a program that is able to count the total number of prime numbers in an array of integers.

### Exercise 3:
Create a program that is able to return the total number of Fibonacci sequence numbers, in order from the first number, that the user requests.
ALGORITHM: The Fibonacci sequence is obtained by starting with the first two numbers 1 and 2, and then adding the two previous positions consecutively to obtain the new value: 1, 2, 3, 5, 8, 13, 21...

### Exercise 4:
Create a program that is able to determine if a string contains a palindrome value. It should reject when the string contains more than one word to avoid errors.
ALGORITHM: A palindrome word reads the same forwards and backwards.

### Exercise 5:
Create a program that is able to add up the different digits of a specified factorial number:
EXAMPLE: 5! = 5 * 4 * 3 * 2 * 1 = 120 -> 1 + 2 + 0 = 3

### Exercise 6:
Create a program with a set of elements that the user specifies, full of prime numbers. Create an algorithm that is able to calculate another set of random numbers that has at least 3 elements in common with the initial set.

### Exercise 7:
Create a program that is able to add up all the numbers in an array of integers.

### Exercise 8:
Construct an array with at least 100 random numbers between 1 and 100, and then filter it to obtain only those numbers that are prime among the 100 that were originally there.

### Exercise 9:
Create a program that is able to obtain the arithmetic mean of a sequence of numbers within an array.

### Exercise 10:
Write a program that stores various types of food and their price per kilogram in a dictionary. Create a way to show the price that any of the products would have when a specific number of kilograms is indicated.


## Swift Algorithms 2.playground

### Exercise 1:
Create an array with 50 random integer numbers. From this array, create a response string that includes any prime numbers found. The result should be a string similar to: "The random prime numbers in this list are x, x, x, x, x".

### Exercise 2:
Create a function that analyzes a text and returns the number of words in it, the total length of the text, and a list of the length of each word in the text.

### Exercise 3:
Create a chocolate factory using classes. The main class will make chocolate bars with n ounces per bar (where n is random). The bars can be dark, milk, or white chocolate. Each bar may also contain a golden ticket to visit the factory, although the probability of this is very low.

### Exercise 4:
We are going to create a school where we will create the necessary data structures using structs instead of classes.

Struct for Teachers, with name and age.
Struct for Subjects, with subject name and the grades where it is taught.
Struct for Students, with name, age, and grade.
Struct for Grades with the teacher and students.
Struct for the School with the different grades.
We want to be able to extract lists and/or counts of the subjects taught by each teacher, how many students each teacher has, and how many unique students are in the school who are at least in one subject. To test that it works, create a series of test data.

### Exercise 5:
We are going to create the structure of a video game.

Character has a life value and a name. They can die when their life reaches 0 and can greet by saying their name.
Hero inherits from Character. They have an attack strength value and can attack an Enemy that is passed as a parameter, reducing their life by a value between 0 and half of their strength.
Wizard inherits from Hero. They have a magic value that adds half of its value to the damage caused in an attack and reduces the damage inflicted when attacked by an Enemy by 1/4.
Warrior inherits from Hero. They have a sword that has an attack value that will be a random number between 0 and half of their strength. This sword inflicts extra damage to enemies equal to the total of their strength.
Enemy inherits from Character. They have an attack strength value and can have three types of weapons, which are chosen at initialization. They can attack a hero passed as a parameter. The Axe weapon will add 10 to the attack damage, the Saber weapon will add 5, and the Chain weapon will add 2. It is also possible for the Enemy to be created without a weapon, in which case their attack strength will not be increased.
Create all the necessary initializers, methods, and properties, as well as the ability for each character to attack and die, in addition to the other behaviors indicated. Use enumerations where it is more practical to represent data.

### Exercise 6:
Given an array of integer numbers to a function, return a dictionary where the keys are the unique numbers in the array and the values are the number of consecutive appearances of each number in the array.

### Exercise 7:
Given a sentence to a function, break it down into its different words. Once done, return a dictionary with the words as keys and the value being the number of times each word appears in the sentence.