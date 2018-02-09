require('rspec')
require('anagram')
describe('#anagram') do
  it("returns 'anagram' if the two words are anagrams") do
    word = Anagram.new("hello")
    expect(word.anagram_check("olleh")).to(eq('anagram'))
  end
  it("returns anagram even if casing is different") do
    word = Anagram.new("hello")
    expect(word.anagram_check("oLleh")).to(eq('anagram'))
  end
  it("returns 'not a word' if the word contains no vowels") do
    word = Anagram.new("hello")
    expect(word.anagram_check("hll")).to(eq('not a word try again'))
  end
  it("returns 'antigram' if not letters match") do
    word = Anagram.new("hi")
    expect(word.anagram_check("bye")).to(eq('antigram'))
  end
end
