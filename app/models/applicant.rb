class Applicant < ActiveRecord::Base

	belongs_to :job
	
	has_attached_file :resume
	validates_attachment :resume, content_type: { content_type: "application/pdf" }
	validates :name, :email, :resume, presence: true

end
