module ApplicationHelper

	def is_active(link, current_action)
		(link == current_action) ? 'selected' : ''
	end

end
