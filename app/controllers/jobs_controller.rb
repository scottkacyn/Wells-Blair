class JobsController < ApplicationController

	def index
		@jobs = Job.all
	end

	def show
		@job = Job.find(params[:id])
		@applicant = Applicant.new
	end
	
end
