class Anagram

         # Remember the letters in the initial word
         def initialize(text)
           @initial_letters = letters_of(text)
         end
         # Test to see if a new word contains the same
         # letters as the original
         def is_anagram?(text)
           @initial_letters == letters_of(text)
         end

         # Determine the letters in a word or phrase
         #
         # * all letters are converted to lower case
         # * anything not a letter is stripped out
         # * the letters are converted into an array
         # * the array is sorted
         # * the letters are joined back into a string
         def letters_of(text)
           text.downcase.delete('^a-z').split('').sort.join
         end
       end

       tester = Anagram.new(ARGV.shift || gets)
       ARGF.each do |text|
         puts "Anagram! " if tester.is_anagram? text
       end
