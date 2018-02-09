class Anagram
  def initialize(word)
    @word = word.downcase
  end
  #anagram checking function
  def anagram_check(test_word)
    test_word = test_word.downcase.gsub(/[^0-9A-Za-z]/, '')
    # check for vowels to see if it is infact a word
    if test_word.scan(/[aeiouy]/).length == 0
      return "not a word try again"
    end
    #check to see if word is antigram
    if test_word.scan(/[#{@word}]/).length == 0
      return "antigram"
    end
    #check whether or not word is anigram
    if @word.downcase.split("").sort == test_word.split("").sort
      return "anagram"
    end
    #implicit return if word is not anagram or antigram
    'not an anagram'
  end
end
