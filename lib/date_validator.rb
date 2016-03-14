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
    month_31 = [1,3,5,7,8,10,12]
    month_30 = [4,6,9,11]
    
    #search for month
    if month < 1 || month > 12
        return false
    end
    
    #search for year
    if year < 1880 || year > 2280
        false
    end
    
    # return month & dates

    if (month_31.include? month) && !(day < 32 && day> 0)
        return false
    elsif (month_30.include? month) && !(day < 31 && day > 0)
        return false
    end
    
    if ((year % 4 == 0 && month == 2) && (year % 100 != 0)) && !(day > 0 && day < 30)
        return "feb leap"
    elsif ((year % 4 == 0 && month == 2) && (year % 100 == 0 && year % 400 ==0)) && !(day > 0 && day <30)
        return "feb leap"
    else
        return " No feb leap"
  
    end
    
end   

valid_date?(12, 31, 2003)


binding.pry