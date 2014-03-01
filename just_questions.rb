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

def separate_array_into_even_and_odd_numbers(arg)
  evens, odds = arg.select { |num| num.even? },
                arg.select { |num| num.odd?  }
end

def number_of_elements_that_are_palindromes(arg)
  arg.select { |word| word == word.reverse }.size
end

def shortest_word_in_array(arg)
  arg.reduce { |a, e| a.length < e.length ? a : e }
end

def longest_word_in_array(arg)
  arg.reduce { |a, e| a.length > e.length ? a : e }
end

def total_of_array(arg)
  arg.reduce(:+)
end

def double_array(arg)
  arg * 2
end

def turn_symbol_into_string(arg)
  arg.to_s
end

def average_of_array(arg)
  (arg.reduce(:+).to_f / arg.length).round
end

def get_elements_until_greater_than_five(arg)
  arg.take_while { |x| x <= 5 }
end

def convert_array_to_a_hash(arg)
  Hash[*arg]
end

def get_all_letters_in_array_of_words(arg)
  arg.map { |word| word.split(//) }.flatten.uniq.sort
end

def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

def add_together_keys_and_values(hash)
  hash.flatten.reduce(:+)
end

def remove_capital_letters_from_string(string)
  string.gsub(/[A-Z]/, '')
end

def round_up_number(num)
  num.ceil
end

def round_down_number(num)
  num.floor
end

def format_date_nicely(date)
  date.strftime('%d/%m/%Y')
end

def get_domain_name_from_email_address(email)
  email[/@(\w+)/, 1]
end
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
