def iter_palindrome(str)
  mid = str.length / 2
  (0..mid).each do |i|
    if str[i] != str[-(i + 1)]
      return "#{str} is not a palindrome." 
    end
  end
  "#{str} is a palindrome." 
end

puts iter_palindrome('racecar')
puts iter_palindrome('cranberry')
puts iter_palindrome('a')
def palindrome(word)
  mid = word.length / 2
  (0..mid).each do |letter|
    if word[letter] != word[-(letter + 1)]
      return "#{word} is not a palindrome."
    end
  end
  "#{word} is a palindrome."
end

puts palindrome('asdb')
puts palindrome('aabbaa')
