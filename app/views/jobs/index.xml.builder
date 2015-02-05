xml.instruct!
xml.source do
	xml.publisher "Wells Blair"
	xml.publisherurl "http://www.wellsblair.com"
	@jobs.each do |job|
		xml.job do
			xml.title "<![CDATA[#{job.title}]]"
			xml.date "<![CDATA[#{job.updated_at}]]"
			xml.referencenumber "<![CDATA[#{job.id}]]"
			xml.url "<![CDATA[#{job_url(job)}]]"
			xml.country "<![CDATA[US]]"
			xml.description "<![CDATA[#{job.description}]]"
		end
	end
end