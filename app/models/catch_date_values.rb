def catch_date_values(date,br)
# This function recieves a string date in the format:
#	-> 5/5/2125
#	-> 05/5/2165
#	-> 5/05/21
#	-> 05/05/154
#
# And a boolean value, 'br', that inverts month and day
# to change date to "Brazilian Format".

	#Reugular expression to pick de values in a date string.
	regex = /(\d{1,2})[\/-](\d{1,2})[\/-](\d+)/
	date = regex.match(date)
    
    if date == nil
        return false
    end

    #Checks date integrity
    if date.length() != 4
        return false
    end

    date = date[1..3]
    3.times.each do |i|
        date[i] = Integer(date[i]) rescue nil
        if date[i] == nil
            puts date[i]
            return false
        end
    end
	
	#Inverts month and day in the case of brazilian date
    if br
		month = date[1]
		day   = date[0]
	else
		month = date[0]
		day   = date[1]
	end
    year = date[2]

	return [day,month,year]
end
