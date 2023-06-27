# in this challenge I will be working with an Array of Strings, and I will
# use .each to interate through the array. I'll research what method I can use
# to check for each string ending in "ing". once i've used a method to 
# determine which strings end in ing i will print the matching strings out.

hobbies = ["Brewing", "Hiking", "Running", "Car work", "Code work"]

hobbies.each do |hobby|
    if hobby.end_with?("ing")
        puts hobby
    end
end

