class Applicant < ActiveRecord::Base

	belongs_to :job
	
	has_attached_file :resume
	validates_attachment :resume, content_type: { content_type: %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
	validates :name, :email, :resume, presence: true

end
