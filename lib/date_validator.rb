def valid_date?(month, day, year)
  valid_date = true
# determine the days in month
  month_31 = [1,3,5,7,8,10,12]
  month_30 = [4,6,9,11]

  # determines all the leap years    
  leap_year = leap_year_array(year)
 
  # if years are within the range
  valid_year = validate_year(year)
    if valid_year == false
      valid_date = false
    end

  # finds if months are within the range
  valid_month = validate_month(month)
    if valid_month == false
      valid_date = false
    end

  # find days and months validation
  if month_31.include?(month) && day > 31 || day <= 0
    valid_date = false
  end

  if month_30.include?(month) && day > 30 || day <= 0
    valid_date = false
  end

  # find leap year
  valid_leap_year = validate_leap_year(month, leap_year, year, day)
    if valid_leap_year == false
      valid_date = false
    end

  valid_date
end





def validate_year(year)
  year >= 1880 && year <= 2280
end

def validate_month(month)
  month >= 1 && month <= 12
end

def leap_year_array(year)
 year = (1880..2280).find_all do |i| 
  i % 4 == 0 && 
  i % 100 != 0 || 
  i % 400 == 0
 end 
end

def validate_leap_year(month, leap_year, year, day)
  if (month == 2 && leap_year.include?(year)) && day == 29
    valid_date = true
  elsif month == 2 && day > 28
    valid_date = false
  end
end