def select_elements_starting_with_a(array)
  array.select { |x| x if x[0] == 'a' }
end

def select_elements_starting_with_vowel(array)
  array.select! { |x| x if x[0] =~ /[aeiou]/ }
end

def remove_nils_from_array(array)
  array.compact!
end

def remove_nils_and_false_from_array(array)
  array.reject { |x| !x }
end

def reverse_every_element_in_array(array)
  array.map! { |x| x.reverse }
end

def every_possible_pairing_of_students(arg)
  arg.combination(2)
end

def all_elements_except_first_3(array)
  array[3, array.length]
end

def add_element_to_beginning_of_array(array, element)
  array.unshift(element)
end

def array_sort_by_last_letter_of_word(array)
  array.sort_by { |x| x[-1] }
end

def get_first_half_of_string(string)
  string[0, ((string.length / 2.0).round)]
end

def make_numbers_negative(num)
  num > 0 ? -num : num
end

def separate_array_into_even_and_odd_numbers(array)
  evens, odds = array.select { |num| num.even? },
                array.select { |num| num.odd?  }
end

def number_of_elements_that_are_palindromes(array)
  array.select { |word| word == word.reverse }.size
end

def shortest_word_in_array(array)
  array.reduce { |a, e| a.length < e.length ? a : e }
end

def longest_word_in_array(array)
  array.reduce { |a, e| a.length > e.length ? a : e }
end

def total_of_array(array)
  array.reduce(:+)
end

def double_array(array)
  array * 2
end

def turn_symbol_into_string(symbol)
  symbol.to_s
end

def average_of_array(array)
  (array.reduce(:+).to_f / array.length).round
end

def get_elements_until_greater_than_five(array)
  array.take_while { |x| x <= 5 }
end

def convert_array_to_a_hash(array)
  Hash[*array]
end

def get_all_letters_in_array_of_words(array)
  array.map { |word| word.split(//) }.flatten.uniq.sort
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

def titleize_a_string(string)
  misc_words = %w(the and a)
  words = string.split(' ').map do |word|
    misc_words.include?(word) ? word : word.capitalize!
  end
  words[0].capitalize!
  words.join(' ')
end

def check_a_string_for_special_characters(string)
  string[/[^\d^a-zA-Z]/]
end

def get_upper_limit_of(range)
  range.to_a[-1]
end

def is_a_3_dot_range?(range)
  range.exclude_end?
end

def square_root_of(num)
  Math.sqrt(num)
end

def word_count_a_file(file)
  IO.binread(file).split.count
end

def call_method_from_string(a_string)
  a_string = lambda { raise NameError }
  a_string.call
end

def is_a_2014_bank_holiday?(date)
  chosen_date = date
  holidays = [
    Time.new(2014, 4, 18),
    Time.new(2014, 4, 21),
    Time.new(2014, 5, 5),
    Time.new(2014, 5, 26),
    Time.new(2014, 8, 25),
    Time.new(2014, 12, 25),
    Time.new(2014, 12, 26),
  ]
  holidays.include?(chosen_date)
end

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

def the_99_bottles_of_beer_song
  99.downto(0) do |x|
    if x > 0
      bottle_form = x > 1 ? 'bottles' : 'bottle'
      expression = x - 1 > 0 ? (x - 1).to_s + ' ' + bottle_form : 'no more bottles'
      puts "#{x} #{bottle_form} on beer on the wall, #{x} #{bottle_form} of beer."
      puts "Take one down and pass it around , #{expression} on the wall."
    else
      puts 'No more bottles of beer on the wall, no more bottles of beer.'
      puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    end
  end
end
