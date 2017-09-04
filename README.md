# String Permutations

A simple method that returns all permutations of a given string.  Here's a one-liner to clone it, install the gems, and run the tests:

`git clone https://github.com/MrMicrowaveOven/TEJU.git && cd TEJU && bundle install && rspec`


Enjoy!

# Fun Fact

Notice that I use `map` with assignment instead of `map!`.  This is because `map!` will not replace the elements in the array if it's called on a sub-array.  For example:

`baaa = ["b","a","a","a"]`

`baaa[1..2].map! {|char| char += "n"}`

While this will return the altered sub-array, `baaa` itself will not be altered since `map!` isn't actually being called on it.  However:

`baaa[1..2] = baaa[1..2].map {|char| char += "n"}`

will actually reassign `baaa` to `["b","an","an","a"]`.
