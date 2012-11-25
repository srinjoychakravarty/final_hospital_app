module ApplicationHelper
	def full_title
  		@title ? "Clinic App | #{@title}" : "Clinic App| TM"
  	end

end
