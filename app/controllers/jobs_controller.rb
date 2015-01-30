class JobsController < ApplicationController

	def show
		@job = Job.find(params[:id])
		@applicant = Applicant.new
	end
	
end
