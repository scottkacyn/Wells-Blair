xml.instruct!
xml.source do
	xml.publisher "Wells Blair"
	xml.publisherurl "http://www.wellsblair.com"
	@jobs.each do |job|
		xml.job do
			xml.title do
				xml.cdata! job.title
			end
			xml.date do
				xml.cdata! job.updated_at.to_s
			end
			xml.referencenumber do
				xml.cdata! job.id.to_s
			end
			xml.url do
				xml.cdata! job_url(job)
			end
			xml.country do
				xml.cdata! "US"
			end
			xml.description do
				xml.cdata! job.description
			end
		end
	end
end