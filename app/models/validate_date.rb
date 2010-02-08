require 'leap_year.rb'
require 'catch_date_values.rb'

def validate_date(date,br)
#This function validates a date.
#It returns an array [bool,bool] where the first item is a bool indicator of
#an error in the month and the second an error in the day
	date = catch_date_values(date,br)
    if date == false
        return [true,true]
    end
	day = date[0]
	month = date[1]
	year = date[2]
    result = [false,false]

	#Array to decide which days have 30 or 31 days.
	months = [true,false,true,false,true,false,true,true,false,true,false,true]

	if month < 1 or month > 12 
		result[0] = true
	end

	#Adjust the max day based on the month
	max_day = 30
	if month == 2
		if leap_year(year)
			max_day = 29
		else
			max_day = 28
		end
	elsif months[month-1]
		max_day = 31
	end

	if day < 1 or day > max_day
		result[1] = true
	end
	
	return result
end
