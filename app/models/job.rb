class Job < ActiveRecord::Base

	has_many :applicants
	after_initialize :set_defaults

	def set_defaults
		self.market ||= 'Chicago'
		self.description ||= '<p>Wells Blair, Ltd. is a specialized tax recruitment firm with markets in Chicago, IL and Houston, TX.  We align with tax professionals seeking the next step in their career.  If you are interested in this opportunity or are interested in discussing the current market and your interests, please submit your information below.</p>'
	end

	def recreate_job
		applicants = self.applicants
		new_job = self.dup
		if new_job.save
			applicants.update_all(job_id: new_job.id)
			self.destroy
		end
	end

	def self.recreate_jobs
		Job.all.each do |job|
			job.recreate_job
		end
	end
end
