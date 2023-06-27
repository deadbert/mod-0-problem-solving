# for this challenge I will need to take an array of strings, alphabetize it, and then
# iterate throught the array printing out each element using string interpolation
# I will use the .sort method to alphabetize my array, and .each to iterate of the 
# elements in the array

destinations = ["New York", "Ireland", "Japan", "Germany", "India"]
# use .sort! to alphabetize the array 
destinations.sort!

# use .each method and string interpolation to print out each destination in a sentence
destinations.each do |location|
    puts "I would really like to visit #{location}"
end
