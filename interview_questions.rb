# I have an array where every number in the range 1...n appears
# once except for one number which appears twice. Write a function for
# finding the number that appears twice.

# Solution
# First, we sum all numbers 1...n. Then, we sum all numbers in our input
# array, which should be the same as our other sum but with our repeat number
# added in twice. So the difference between these two sums is the repeated number!
