# for this challenge I need to write a method that will take an individuals annual income, 
# and use that value to determine the total taxes they owe. Taking into account taxes are 
# progressive, I will need to calculate the tax burden at each bracket, not a flat tax rate. 
# I'll be mostly dealing with integers and floats for this challenge, and a slew of 
# conditional statements. The challenge mentions one person, so I will ignore jointly filing 
# couples for now, which could be added as a feature later.


def death_and_taxes(income)
    # declare max taxes owed for each bracket, use these later for tax calculations
    max_base_rate = 10275 * 0.10
    max_under41k_rate = (max_base_rate) + ((41775-10275) * 0.12)
    max_under89k_rate = (max_under41k_rate) + ((89075-41775) * 0.22)
    max_under170k_rate = (max_under89k_rate) + ((170050-89075) * 0.24)
    max_under216k_rate = (max_under170k_rate) + ((215950-170050) * 0.32)

    taxes_owed = 0
        # control flow used to determine which tax bracket income falls within, and then
        # calculate the total owed from previous tax brackets + what is owed from the tax
        # bracket the income falls within
        if income <= 10275
            taxes_owed = income * 0.10
        elsif income <= 41775
            taxes_owed = max_base_rate + ((income - 10275) * 0.12)
        elsif income <= 89075
            taxes_owed = max_under41k_rate + ((income - 41775) * 0.22)
        elsif income <= 170050
            taxes_owed = max_under89k_rate + ((income - 89075) * 0.24)
        elsif income <= 215950
            taxes_owed = max_under170k_rate + ((income - 170050) * 0.32)
        elsif income > 215950
            taxes_owed = max_under216k_rate + ((income - 215950) * 0.35)
    end
end

# testing cases for taxes method
puts "#{death_and_taxes(15000)} taxes at 15000" 
puts "#{death_and_taxes(69050)} taxes at 69050"
puts "#{death_and_taxes(96000)} taxes at 96000"
puts "#{death_and_taxes(150750)} taxes at 150750"
puts "#{death_and_taxes(299090)} taxes at 2990090"
