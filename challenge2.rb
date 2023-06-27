# in this challenge I will be dealing with an array containing strings
# for elements. I will need to iterate through each element of the array
# using .each, and then convert the string for each index to all lowercase
# using the .downcase string method. 

jumble = ["KDjfkeidKD", "kdiKeiwoIIIodk", "II", "YO"]

jumble.each do |string|
    puts string.downcase
end
