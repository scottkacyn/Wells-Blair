class Job < ActiveRecord::Base

	after_initialize :set_defaults

	def set_defaults
		self.description ||= '<p>I’ve never caught a fox, with socks. One could say I’m a foxless, sockless jock. I used to be one of them, one of the good guys. I can’t say that now. I’m a bit darker than I used to be. Whether that was due to my constant struggle with diabetes or not, I’m not sure. Maybe it was my whore of a wife. Either way, I’m a bit colder than I used to be.</p>'
	end

end
