class Anagram
  def initialize(word)
    @word = word
  end

  def word_check(test_word)
    if test_word.scan(/[aeiouy]/).length == 0
      return true
    end
    false
  end

  def anagram_check(test_word)
    # check for vowels to see if it is infact a word
    if word_check(test_word)
      return "not a word try again"
    end
    if test_word.scan(/[#{@word}]/).length == 0
      return "antigram"
    end
    #check whether or not word is anigram
    if @word.downcase.split("").sort == test_word.downcase.split("").sort
      return "anagram"
    end
    'not an anagram'
  end

end
