class Job < ActiveRecord::Base

	after_initialize :set_defaults

	def set_defaults
		self.market ||= 'Chicago'
		self.description ||= '<p>Wells Blair, Ltd. is a specialized tax recruitment firm with markets in Chicago, IL and Houston, TX.  We align with tax professionals seeking the next step in their career.  If you are interested in this opportunity or are interested in discussing the current market and your interests, please submit your information below.</p>'
	end

end
