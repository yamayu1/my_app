SimpleCalendar::Calendar.class_eval do
    def events_attribute
        @events_attribute ||= :start_time
    end
end