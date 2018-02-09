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
    # if word_check(test_word)
    #   return
    @word = @word.downcase.split("").sort
    test_word = test_word.downcase.split("").sort
    if @word == test_word
      return 'anagram'
    end
    return 'not an anagram'
  end

end
