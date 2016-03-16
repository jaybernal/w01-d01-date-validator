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
=begin
def valid_date?(month, day, year)
    
   

# find leap year
    if (month == 2 && leap_year.include?(year)) && day == 29
      return true
    elsif month == 2 && day > 28
     	return false
    end

  return true
end
=end 

def assign_variables(month_31,month_30,leap_year)
  month_31 = [1,3,5,7,8,10,12]
  month_30 = [4,6,9,11]
  leap_year = (1880..2280).find_all { |i| i % 4 == 0 && i % 100 != 0 || i % 400 == 0 }
end

def validate_year(year)
  if year < 1880 || year > 2280
  	return false   
  end
end

def validate_month(month)
	if month < 0 || month > 12
  	return false
  end
end

def validate_days_in_month(month)
 	if month_31.include?(month) && day > 31 || day <= 0
   return false
  end

  if month_30.include?(month) && day > 30 || day <= 0
   return false
  end
end

def is_leap_year(month, year)
  if (month == 2 && leap_year.include?(year)) && day == 29
   return true
  elsif month == 2 && day > 28
   return false
  end
end


