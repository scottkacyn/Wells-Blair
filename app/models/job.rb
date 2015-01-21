class Job < ActiveRecord::Base

	after_initialize :set_defaults

	def set_defaults
		self.description ||= '<p>Wells Blair is a leader in specialized tax recruitment solutions with markets in Chicago, IL and Houston, TX.  We have seen tremendous year after year growth since our inception in January 2008.  Due to this growth we are looking to make some significant additions to our tax recruiting team – these positions will be based in Houston, TX.</p>'
	end

end
