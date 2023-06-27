# for this challenge I will take a sentence(string) and replace the 
# first letter of each word with it's capital counterpart. I'm looking 
# to break the sentence out into an array, use the .each method for 
# arrays to capitalize each element, and then concat the elements back 
# together to form a full sentence with each word having a leading 
# capital character
# I'm going to use the .split method built in for strings, as I can 
# safely assume each word will be separated by one space (" "). allowing 
# me to call .capitalize on each element in the array formed by .split, 
# after which point I will concat all the elements of the array back 
# together into a single string

no_cap = "aint no uppercase in this here sentence"

no_cap_array = no_cap.split(" ")
cap_array = []
no_cap_array.each do |word|
    cap = word.capitalize
    cap_array << cap 
end
p cap_array.join(" ")