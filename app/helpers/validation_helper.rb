# encoding: UTF-8
module ValidationHelper

	def conversion_to_date_at(method,field_at_before_type_cast)
		#What: Validates format converstion for date_at from string.
		
		#How: Exemple for 'start_at' field to add in the model.
		# include ValidationHelper
		# validate {conversion_to_date_at(:start_at,start_at_before_type_cast)}
		
		errors.add(method, ' (' + field_at_before_type_cast + ') formato incorrecto ' + DATE_AT_FORMAT_EXPLANATION + ' o valor fuera de rango') if is_invalid_date_at(field_at_before_type_cast)
	end

	def is_invalid_date_at(field)	  	
		#What: validates format for date_at
		
		if field == nil or field == ''
			false 	#Null is not an invalid date. Valid date!
		else
			begin
				if defined?(DATE_AT_FORMAT)
					# Configuration without internationalization (i18n)
					format_to_validate = DATE_AT_FORMAT
				else
					# Configuration with internationalization (i18n)
					format_to_validate = I18n.t("time.formats.default")
				end
				
				DateTime.strptime(field, format_to_validate)
								
				false	#Converstion without problems! Valid date!
			rescue
				true	#Converstion with problems! Invalid date!
			end	
		end 
		
	end  

	def conversion_to_date_on(method,field_on_before_type_cast)
		#What: Validates format converstion for date_on from string.
		
		#How: Exemple for 'start_on' field to add in the model.
		# include ValidationHelper
		# validate {conversion_to_date_on(:start_on,start_on_before_type_cast)}
		
		errors.add(method, ' (' + field_on_before_type_cast + ') formato incorrecto ' + DATE_ON_FORMAT_EXPLANATION + ' o valor fuera de rango') if is_invalid_date_on(field_on_before_type_cast)
	end

	def is_invalid_date_on(field)	  	
		#What: validates format for date_on
		
		if field == nil or field == ''
			false 	#Null is not an invalid date. Valid date!
		else
			begin
				if defined?(DATE_ON_FORMAT)
					# Configuration without internationalization (i18n)
					format_to_validate = DATE_ON_FORMAT
				else
					# Configuration with internationalization (i18n)
					format_to_validate = I18n.t("date.formats.default")
				end
				
				DateTime.strptime(field, format_to_validate)
								
				false	#Converstion without problems! Valid date!
			rescue
				true	#Converstion with problems! Invalid date!
			end	
		end 
		
	end  	
	
end
