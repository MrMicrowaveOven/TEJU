# String Permutations

A simple method that returns all permutations of a given string.  Here's a one-liner to clone it, install the gems, and run the tests:

`git clone https://github.com/MrMicrowaveOven/TEJU.git && cd TEJU && bundle install && rspec`


Enjoy!

# Fun Fact

Notice that I use `map` with assignment instead of `map!`.  This is because `map!` will not replace the elements in the array if it's called on a sub-array.  For example:

hello = ["h","e","l","l","o"]

hello[1..3].map! {|char| char += "r"}

`hello` will not be altered, since `map!` is being called on a sub-array of `hello`.  However:

hello[1..3] = hello[1..3].map {|char| char += "r"}

will reassign `hello` to ["h","er","lr","lr","o"].
