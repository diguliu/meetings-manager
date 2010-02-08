def validate_time(time)
#This function validates time in the following forms:
#   -> 1pm
#   -> 12:30pm
#   -> 8am
#   -> 15:11h
#   -> 8h
#   -> 02:1h
    
    #Matches the regex
    regex = Regexp.new('^(\d{1,2})(h|am|pm)|^(\d{1,2}):(\d{1,2})(h|am|pm)')
    time = regex.match(time)
    if time == nil
        return false
    end
    tmp = []

    puts time

    #Eliminates all nil's
    time.length().times.each do |i|
        if time[i]
            tmp.push(time[i])
        end
    end

    time = tmp[1..tmp.length()-1]
    last_pos = time.length()-1
    
    puts "--------"
    puts time

    #Checks if values are integers
    last_pos.times.each do |i|
        time[i] = Integer(time[i]) rescue nil
        if time[i] == nil
            return false
        end
    end

    #Checks hour
    if time[last_pos] == "h"
        if 0 > time[0] || time[0] > 23
            return false
        end
    elsif time[last_pos] == "am" || time[last_pos] == "pm"
        if 1 > time[0] || time[0] > 12
            return false
        end
    end 


    #Checks minutes
    if last_pos == 2
        if 0 > time[1] || time[1] > 59
            return false
        end
    end

    return true
end
