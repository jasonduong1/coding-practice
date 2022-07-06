# Given a year, report if it is a leap year.

# The tricky thing here is that a leap year in the Gregorian calendar occurs:

# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400
# For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.

class Year
  def leap?(year)
    if year % 4 == 0
      if year % 100 == 0
        if year % 400 == 0
          return true
        end
        return false
      end
      return true
    else
      return false
    end
  end
end

# p Year.new.leap?(2000)
# p Year.new.leap?(1997)
# p Year.new.leap?(1996)
# p Year.new.leap?(1900)
