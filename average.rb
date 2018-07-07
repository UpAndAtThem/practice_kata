# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array. The array
# will never be empty and the numbers will always be positive integers.

# ----pseudo code----
# given an array of integers named int_arr
# initialize variable sum equal to 0
# iterate over int_arr where each iteration variable is named int
#   reassign sum as, sum + int
# return sum divided by the number of elements in int_arr

# ----formal pseudo code----
# START

# given an array of integers
# SET sum = 0, counter = 1

# WHILE counter <= num of elements in int_arr
#   sum += element at position 'counter' of int_arr
#   counter += 1
#
# PRINT sum / number of elements in int_arr

# END

def average(int_arr)
  int_arr.reduce(&:+) / int_arr.size
end
