class ApplicantsController < ApplicationController

	def show
		@applicant = Applicant.find(params[:id])
	end

	def create
		@applicant = Applicant.new(applicant_params)
		@job = Job.find(params[:applicant][:job_id])
		@applicant.resume = params[:applicant][:resume]

		if @applicant.save
			redirect_to @applicant
		else
			redirect_to @job
		end
	end

	private

	def applicant_params
		params.require(:applicant).permit(:name, :email, :phone, :company, :address, :city, :state, :zip, :job_id)
	end

end
