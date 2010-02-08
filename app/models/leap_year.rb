def leap_year(year)
# This function returns True when the year is a "Leap Year" and False
# if not.

	if(year%4 == 0 and year%100 != 0) or year%400 == 0
		return true
	else
		return false
	end
end
