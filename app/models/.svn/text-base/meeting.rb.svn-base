require 'validate_date.rb'
require 'validate_time.rb'

class Meeting < ActiveRecord::Base
    has_and_belongs_to_many :participants
    validates_presence_of :title, :date, :time
    validates_uniqueness_of :title, :case_sensitive => false ,
    :scope => :date, 
    :message => "meetings with same name shouldn't happen in the same day"
   validate :invalid_day, :invalid_month, :invalid_time

    def invalid_month
        errors.add(:date, "invalid month") if
            validate_date(date,1)[0] == true
    end

    def invalid_day
        errors.add(:date, "invalid day") if
            validate_date(date,1)[1] == true
    end

    def invalid_time
        errors.add(:time, "invalid time") if
            validate_time(time) == false
    end
end
