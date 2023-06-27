# in this challenge I will be dealing with a string, and I will need to 
# remove all instances of the letter s, then return the new string. I'll
# use the global sub string method to achieve this .gsub

sentence = "I wonder how many of the letter s is in this sentence."
sentence.gsub!("s", "")
puts sentence