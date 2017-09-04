require_relative "../lib/string_arrange.rb"

describe "string_permutations" do
  it "prints all the ways a string of length 3 can be arranged" do
    expect(string_permutations("abc")).to eql(["abc","acb","bac","bca","cab","cba"])
  end
  it "prints all the ways a string of length 4 can be arranged" do
    expect(string_permutations("abcd")).to eql(
      ["abcd","abdc","acbd","acdb","adbc","adcb","bacd","badc",
        "bcad","bcda","bdac","bdca","cabd","cadb","cbad","cbda","cdab",
        "cdba","dabc","dacb","dbac","dbca","dcab","dcba"]
    )
  end
  it "prints permutations with repeated characters" do
    expect(string_permutations("aa")).to eql(["aa", "aa"])
  end
  it "returns the input if given a single character" do
    expect(string_permutations("a")).to eql(["a"])
  end
end

# // Write a function that prints all the ways a string could be rearranged. E.g.:
# //
# // input: abc
# // output:
# // abc
# // acb
# // bac
# // bca
# // cab
# // cba
# //
# // input: abcd
# // output:
# // abcd
# // abdc
# // acbd
# // acdb
# // adbc
# // adcb
# // bacd
# // badc
# // bcad
# // bcda
# // bdac
# // bdca
# // cabd
# // cadb
# // cbad
# // cbda
# // cdab
# // cdba
# // dabc
# // dacb
# // dbac
# // dbca
# // dcab

# //
# // input: aa
# // output:
# // aa
# // aa
