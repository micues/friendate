class Event < ActiveRecord::Base
	include ValidationHelper
	require 'date'	
	validate {conversion_to_date_at(:start_at, start_at_before_type_cast)}
	validate {conversion_to_date_on(:finish_on, finish_on_before_type_cast)}
end
