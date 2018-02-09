class Anagram
  def initialize(word)
    @word = word
  end

  def anagram_check(test_word)
    @word = @word.downcase.split("").sort
    test_word = test_word.downcase.split("").sort
    if @word == test_word
      return 'anagram'
    end
    return 'not an anagram'
  end
end
