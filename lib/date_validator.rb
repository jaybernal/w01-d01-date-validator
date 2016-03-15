# This method takes three arguments: month, date, and year, and returns either TRUE
# or FALSE (the boolean values, not the string representation of those boolean
# values) depending on whether the date is valid (i.e. does exist on the calendar)
# or is not valid (i.e. does not exist on the calendar).
#
# Here are the rules:
#
# + The month must be between 1 and 12 (inclusive)
# + The year must be between 1880 and 2280 (inclusive)
# + The day must exist within the month
# + You must account for leap years (look up how leap years work)
# + No using the `Date` class (we'll refactor to allow the `Date` class later this week)
# + Only worry about integer inputs (no floats, strings, etc.)
#
# This method should, in its final form, not do any output.

def valid_date?(month, day, year)
    
# determine the days in month
    month_31 = [1,3,5,7,8,10,12]
    month_30 = [4,6,9,11]
    
# determines all the leap years    
     leap_year = (1880..2280).find_all {|i| i % 400 == 0 || i % 4 == 0 }  
    
# if years are within the range
     if year < 1880 || year > 2280
         false   
     else 
         puts "within the year range"
     end
     
# if days are within the range
     if day < 0 || day > 31
         false
     else
         puts "within the day range"
     end
     
# finds if months are within the range
    if month <0 || month > 12
        false
    else
        puts 'within the month range'
    end

    if month == 2 && leap_year.include?(year) && day == 29
        puts "leap year"
    else
        return false        
    end

end  

valid_date?(2,2,1880)


