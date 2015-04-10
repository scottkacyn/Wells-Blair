class ApplicantMailer < ActionMailer::Base
  default from: "info@wellsblair.com"

  def application_confirmation(applicant, job)
  	@applicant = applicant
  	@job = job

  	if job.email.blank?
  		mail(to: "info@wellsblair.com, jb@wellsblair.com, tberchou@wellsblair.com", subject: "New Application Received")
  	else
  		mail(to: "#{job.email}", subject: "New Application Received")
  	end
  end
end
