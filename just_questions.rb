def select_elements_starting_with_a(arg)
  arg.select { |x| x if x[0] == 'a' }
end

def select_elements_starting_with_vowel(arg)
  arg.select! { |x| x if x[0] =~ /[aeiou]/ }
end

def remove_nils_from_array(arg)
  arg.compact!
end

def remove_nils_and_false_from_array(arg)
  arg.reject { |x| !x }
end

def reverse_every_element_in_array(arg)
  arg.map! { |x| x.reverse }
end

def every_possible_pairing_of_students(arg)
  arg.combination(2)
end

def all_elements_except_first_3(arg)
  arg[3, arg.length]
end

def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

def array_sort_by_last_letter_of_word(arg)
  arg.sort_by { |x| x[-1] }
end

def get_first_half_of_string(arg)
  arg[0, ((arg.length / 2.0).round)]
end

def make_numbers_negative(arg)
  arg > 0 ? -arg : arg
end
# turn an array of numbers into two arrays of numbers, one an array of
# even numbers, the other an array of odd numbers
# even numbers come first
# so [1, 2, 3, 4, 5, 6] becomes [[2, 4, 6], [1, 3, 5]]

# count the numbers of elements in an element which are palindromes
# a palindrome is a word that's the same backwards as forward
# e.g. 'bob'. So in the array ['bob', 'radar', 'eat'], there
# are 2 palindromes (bob and radar), so the method should return 2

# return the shortest word in an array

# return the longest word in an array

# add up all the numbers in an array, so [1, 3, 5, 6]
# returns 15

# turn an array into itself repeated twice. So [1, 2, 3]
# becomes [1, 2, 3, 1, 2, 3]

# convert a symbol into a string

# get the average from an array, rounded to the nearest integer
# so [10, 15, 25] should return 33

# get all the elements in an array, up until the first element
# which is greater than five. e.g.
# [1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7]
# becomes [1, 3, 5, 4, 1, 2]

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}

# get all the letters used in an array of words and return
# it as a array of letters, in alphabetical order
# . e.g. the array ['cat', 'dog', 'fish'] becomes
# ['a', 'c', 'd', 'f', 'g', 'h', 'i', 'o', 's', 't']

# swap the keys and values in a hash. e.g.
# {'a' => 'b', 'c' => 'd'} becomes
# {'b' => 'a', 'd' => 'c'}

# in a hash where the keys and values are all numbers
# add all the keys and all the values together, e.g.
# {1 => 1, 2 => 2} becomes 6

# take out all the capital letters from a string
# so 'Hello JohnDoe' becomes 'ello ohnoe'

# round up a float up and convert it to an Integer,
# so 3.214 becomes 4

# round down a float up and convert it to an Integer,
# so 9.52 becomes 9

# take a date and format it like dd/mm/yyyy, so Halloween 2013
# becomes 31/10/2013

# get the domain name *without* the .com part, from an email address
# so alex@makersacademy.com becomes makersacademy

# capitalize the first letter in each word of a string,
#  except 'a', 'and' and 'the'
# *unless* they come at the start of the start of the string, e.g.
# 'the lion the witch and the wardrobe' becomes
# 'The Lion the Witch and the Wardrobe'

# return true if a string contains any special characters
# where 'special character' means anything apart from the letters
# a-z (uppercase and lower) or numbers

# get the upper limit of a range. e.g. for the range 1..20, you
# should return 20

# should return true for a 3 dot range like 1...20, false for a
# normal 2 dot range

# get the square root of a number

# count the number of words in a file

# --- tougher ones ---

# call an arbitrary method from a string. so if I
# called call_method_from_string('foobar')
# the method foobar should be invoked

# return true if the date is a uk bank holiday for 2014
# the list of bank holidays is here:
# https://www.gov.uk/bank-holidays

# given your birthday this year, this method tells you
# the next year when your birthday will fall on a friday
# e.g. january 1st, will next be a friday in 2016
# return the day as a capitalized string like 'Friday'

# in a file, total the number of times words of different lengths
# appear. So in a file with the text "the cat sat on the blue mat"
# I have 5 words which are 3 letters long, 1 which is 2 letters long
# and 1 that is 4 letters long. Return it as a hash in the format
# word_length => count, e.g. {2 => 1, 3 => 5, 4 => 1}

# implement fizzbuzz without modulo, i.e. the % method
# go from 1 to 100
# (there's no RSpec test for this one)

# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)
