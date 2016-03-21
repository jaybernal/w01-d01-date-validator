require 'pry'
def valid_date?(month, day, year)
  valid_date = true
# determine the days in month


  # determines all the leap years    
  leap_year = leap_year_array(year)
 
  # if years are within the range
  valid_year = validate_year(year)


  # finds if months are within the range
  valid_month = validate_month(month)


  # find days and months validation
  valid_days_in_month = validate_days_in_month(month, day, year) 
    if valid_days_in_month == false || valid_month == false || valid_year == false
      valid_date = false
    end

  valid_date
end


# Determines if the years are within Range
#
# + user will indicate the year between 1880 - 2280
#
# This will return true if the month is valid
def validate_year(year)
  year >= 1880 && year <= 2280
end


# Determines if the month are within Range
#
# + user will indicate the month by an interger
#
# This will return true if the month is valid
def validate_month(month)
  month >= 1 && month <= 12
end

# Stores all leap years in a single array
#
# + Array will list all the leap years betweeen 1880 - 2280
#
# This will return true if the month is valid
def leap_year_array(year)
 year = (1880..2280).find_all do |i| 
  i % 4 == 0 && 
  i % 100 != 0 || 
  i % 400 == 0
 end 
end

# Determines if 2.29 is actually a leap year. 
#
# + block only runs when month "2" is enter
#
# This is return false if 2.29 is entered and not a leap year.

# def validate_leap_year(month, leap_year, year, day)
#   if (month == 2 && leap_year.include?(year)) && day == 29
#   elsif month == 2 && day > 28
#     valid_date = false
#   end
# end

# Determines if month has either 30 or 31 days
#
# + this block is using an array to search whether the month has 30 or 31 days
#
# This will return true if days are included within the months and false if outside range

def validate_days_in_month(month, day, year)
  month_31 = [1,3,5,7,8,10,12]
  month_30 = [4,6,9,11]

  leap_year = leap_year_array(year)


  if month_31.include?(month) && day > 31 || day <= 0
    valid_date = false
  elsif month_30.include?(month) && day > 30 || day <= 0
    valid_date = false
  elsif month == 2 && leap_year.include?(year) && day == 29

  elsif month == 2 && day > 28
    valid_date = false
  end
      
end

