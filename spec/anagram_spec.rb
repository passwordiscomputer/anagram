require('rspec')
require('anagram')
describe('#anagram') do
  it("returns 'anagram' if the two words are anagrams") do
    word = Anagram.new("hello")
    expect(word.anagram_check("olleh")).to(eq('anagram'))
  end
  it("returns anagram even if caing is different") do
    word = Anagram.new("hello")
    expect(word.anagram_check("oLleh")).to(eq('anagram'))
  end
end
