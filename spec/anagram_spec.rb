require('rspec')
require('anagram')
describe('#anagram') do
  it("returns 'anagram' if the two words are anagrams") do
    word = Anagram.new("hello")
    expect(word.anagram_check("olleh")).to(eq('anagram'))
  end
end
