# this challenge requires working with an array full of strings. I will
# use .each to iterate over the array, and then use a conditional
# to check if the .lenght of each string is == to 4 or not, printing
# only the strings that have a lenght exactly equal to 4.

words = ["Here", "Now", "What", "Who", "When", "Guess"]

words.each do |word|
    if word.length == 4
        puts word
    end
end
