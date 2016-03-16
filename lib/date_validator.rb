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
require "pry"
def valid_date?(month, day, year)
    
# determine the days in month
    month_31 = [1,3,5,7,8,10,12]
    month_30 = [4,6,9,11]
    
# determines all the leap years    
     leap_year = (1880..2280).find_all do |i| 
     	i % 4 == 0 && 
     	i % 100 != 0 || 
     	i % 400 == 0
     end 
    
# if years are within the range
     if year < 1880 || year > 2280
     	return false   
     end

# finds if months are within the range
    if month < 0 || month > 12
      return false
    end
    
# find days and months validation
    if month_31.include?(month) && day > 31 || day <= 0
      return false
    end
    
    if month_30.include?(month) && day > 30 || day <= 0
      return false
    end

# find leap year
    if (month == 2 && leap_year.include?(year)) && day == 29
      return true
    elsif month == 2 && day > 28
     	return false
    end

  return true
end



