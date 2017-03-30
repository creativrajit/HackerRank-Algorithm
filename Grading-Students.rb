#!/bin/ruby

n = gets.strip.to_i
for a0 in (0..n-1)
    grade = gets.strip.to_i
    # your code goes here
    
    number = 1
    if grade >= 38
        # Loop the multiples of 5
        loop do
            multiple = number * 5
            
            #Check if multiple - grade is less than 3
            if (multiple - grade).abs < 3 && (multiple > grade)
                grade = multiple
            end
            
            break if multiple - 3 > grade
            number += 1
        end
    end
    
    puts grade
end
