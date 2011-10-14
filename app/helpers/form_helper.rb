# encoding: UTF-8
module FormHelper
	def self.included(base)
		ActionView::Helpers::FormBuilder.instance_eval do
			include FormBuilderMethods
		end
	end
 
	module FormBuilderMethods
		# @template - this is a reference to the current template processing object. Each helper method you call in your templates can be called as the variable method inside the FormBuilder class.
		# @object - a reference to the current model instance which the form covers.
		# @object_name - the name of the model variable you use to build your form.
		
		def form_field_at(method, default_value = nil)
			#Info: Exemple default: Time.now	/ 1.month.from_now / 1.year.from_now
			#Info: Si el format no es correcta l'objecta es guarda com a nil		
			
			#Jquery per iniciar el datetimepikcer
			script = '<script>'
			script << ' $(function(){$( "#' + @object_name.to_s + '_' + method.to_s + '" ).datetimepicker({ showOn: \'button\' });});' 
			script << '</script>' + "\n" 
						
			#Preparem el valor(En lloc del metodo to_s podem fer servir value.strftime(DATE_AT_FORMAT) )
			value = @object.send(method).to_s
			value = default_value.to_s if value.blank?
			
			#Invoquem l'objecta modificat
			form_field_at = @template.text_field @object_name, method, 
						:value => value , :size => 16, :ondblclick => 'this.value="' + Time.now.to_s + '"'
			
			#Ajuntem
			script.to_s.html_safe + '  ' + form_field_at.to_s.html_safe
		end

		def form_field_on(method, default_value = nil)
			#Info: Exemple default: Time.now	/ 1.month.from_now / 1.year.from_now
			#Info: Si el format no es correcta l'objecta es guarda com a nil		
		
			#Jquery per iniciar el datetimepikcer
			script = '<script>'
			script << ' $(function(){$( "#' + @object_name.to_s + '_' + method.to_s + '" ).datepicker({ showOn: \'button\' });});' 
			script << '</script>' + "\n" 
						
			#Preparem el valor(En lloc del metodo to_s podem fer servir value.strftime(DATE_AT_FORMAT) )
			value = @object.send(method).to_s
			value = default_value.to_s if value.blank?
			
			#Invoquem l'objecta modificat
			form_field_on = @template.text_field @object_name, method, 
						:value => value , :size => 10, :ondblclick => 'this.value="' + Time.now.to_date.to_s + '"'
			
			#Ajuntem
			script.to_s.html_safe + '  ' + form_field_on.to_s.html_safe
		end		

	end
	
end
