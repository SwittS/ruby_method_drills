#########################
#### USING ARGUMENTS ####
#########################
#say_hello
  # returns 'hello'
def say_hello
  "hello"
end
#echo
  # returns the input string
def echo(input)
  input
end
#eddie_izzards_height
  # calculates and returns Eddie Izzard's height
  # takes in the height of heels he's wearing (default value: 0)
  # and adds heel height to his base 67 inches for the result
def eddie_izzards_height(heel_height=0)
  67 + heel_height
end

#how_many_args
  # accepts any number of arguments without complaint
  # returns the total number of arguments passed to the function
  # Hint: google ruby *args
def how_many_args(*n)
  n.count
end

#find_answer
  # returns the value associated with the 'answer' keyword argument
  # returns nil if it cannot find the 'answer' keyword argument
  # complains when given non-keyword arguments
  # Hint: google ruby keyword arguments
def find_answer(kwargs={})
  kwargs[:answer]
end


##############################
#### MANIPULATING STRINGS ####
##############################
#first_char
  # takes in a word
  # returns the first letter of the word
  # lowercases the first letter of the word
def first_char(str)
  str[0, 1].downcase
end
#polly_wanna
  # takes in a word
  # echoes the original word
  # repeats the original word 3 times
  # returns a string with the word repeated
def polly_wanna(str, n = 3)
  str * n
end

#count_chars
  # takes in a word
  # returns the number of characters in the word
def count_chars(str)
  str.length
end
#yell
  # takes in a message
  # convert the message to uppercase
  # adds an exclamation point to the end of the message
  # returns the message
def yell(str)
  str.upcase + "!"
end

## wordETCH ##
#to_telegram
  # takes in a message
  # replaces periods with ' STOP'
  # returns the updated message
def to_telegram(message)
  message.gsub('.', ' STOP')
end

  #pell_out
  # takes in a string
  # converts the string to lowercase
  # returns the input string, with characters seperated by dashes
def spell_out(str)
  str.downcase.split("").join("-")
end



  #eperate
  # takes in a string
  # seperates characters with a custom seperator, when supplied with one
  # seperates characters with dashes (by default)
  # returns the modified string
def seperate(str, seperator="-")
  str.split("").join(seperator)
end


## STRETCH ##
#croon
  # seperates word characters with dashes
  # preserves whitespace between words
def croon(str)
  str.split(" ").map{|word| word.split("").join("-") }.join(" ")
end

#palindrome_word?
  # determines whether a single word is a palindrome
  # ignores case
  # returns true or false
def palindrome_word?(str)
  str = str.downcase.scan(/\w/)
  str == str.reverse
end

## SUPER STRETCH ##
#palindrome_sentence?
  # determines whether a sentence is a palindrome
  # ignores case
  # ignores whitespace
  # ignores punctuation
def palindrome_sentence?(str)
  str = str.downcase.scan(/\w/)
  str == str.reverse
end

#is_vowel
  # takes in a string of one character
  # determines whether the character is a vowel
  # ignores case
  # handles weird inputs gracefully
def is_vowel(char)
  char.is_a?(String) && !!char.match(/[aeiou]/i)
end

#add_period
  # takes in a string
  # adds a period to the end of the sentence
  # does not add a period if one is already there
  # does not add a period if any form of terminal punctuation is present
  # returns the sentence
def add_period(str)
  "!?.".include?(str[-1]) ? str : str + "."
end


###########################
#### LOOPS & ITERATORS ####
###########################
#count_spaces
  # takes in a string
  # counts the spaces in a string
  # returns number of spaces
def count_spaces(str)
  count = 0
  space = " "
  str.each_char do |char|
    if char == space
      count += 1
    end
  end
  count
end

#string_lengths
  # takes in an array of strings
  # returns an array containing the lengths of the strings
def string_lengths(array_of_strings)
  array_of_strings.map {|x| x.size }
end

#remove_falsy_values
  # takes in a list
  # filters out falsy values from a list
  # returns the updated list
def remove_falsy_values(list)
  list.select { |item| !!item }
end

#exclude_last
  # takes in an array or string
  # removes the last item from the array or string
  # returns it
def exclude_last(arrstring)
  arrstring[0..-2]
end

#exclude_first
  # takes in an array or string
  # removes the first item from an array
  # removes the first character from a string
  # returns a new string - does not alter the original input (non-destructive)

def exclude_first(arrstring)
  arrstring[1..-1]
end

#exclude_ends
  # takes in an array or string
  # removes the first and last items from an array
  # removes the first and last characters from a string
def exclude_ends(arrstring)
  arrstring[1..-2]
end

#select_every_even
  # takes in an array
  # returns a list of even-indexed items from the input
def select_every_even(array)
  array.select.with_index{ |item, index| item if index.even? }
end

#select_every_odd
  # takes in an array
  # returns a list of odd-indexed items
  def select_every_odd(array)
    array.select.with_index{ |item, index| item if index.odd? }
  end
#select_every_n
  # takes in an array
  # returns a list of items at an index evenly divisible by n
  # defaults to an n value of 1
  def select_every_n(array, n=1)
    array.select.with_index{ |item, index| item if index%n == 0 }
  end

## STRETCH ##
#compile_agenda
  # converts a list of agenda items into a single string
  # titles start with a bullet ("*") and are separated by line breaks ("/n")
  # sorts items by priority ascending (low to high) by default
  # sort order can (optionally) be changed to priority descending
  # the bullet can (optionally) be changed to any symbol
  def compile_agenda(agenda_items, order="DESC", bullet="*")
    sorted_agenda_items = agenda_items.sort_by {|o| o[:priority] }
    sorted_agenda_items.reverse! if order == "ASC"
    sorted_agenda_items.map {|o| "#{bullet} #{o[:title]}"  }.join("\n")
  end
##############################
#### MANIPULATING NUMBERS ####
##############################
#count_to
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals
def count_to(n)
  n = n.to_i
  if n >= 0
    (0..n).to_a
  else
    0.downto(n).to_a
  end
end
#is_integer?
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers
def is_integer?(num)
  num.class == Fixnum || num.class == Bignum ||
    ( num.is_a?(Float) && !num.nan? && num.to_i == num )
end
#is_prime?
  # takes inum a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!
def is_prime?(num)
  if !is_integer?(num) || num <= 1
    false
  elsif num <= 1
    false
  else
    (2..(num-1)).each do |n|
      if num % n == 0
        return false
      end
    end
    true
  end
end
#primes_less_than
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number
def primes_less_than(num)
  primes = []
  (2..(num-1)).each do |n|
    if is_prime?(n)
      primes.push n
    end
  end
  primes
end
## STRETCH ##
#iterative_factorial
  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
def iterative_factorial(num)
  if num < 0 || !is_integer?(num)
    return Float::NAN  # a constant meaning "Not a Number"
  end
  memo = 1
  (1..num).each do |i|
    memo = memo*i
  end
  memo
end


##############################
#### MANIPULATING OBJECTS ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency
