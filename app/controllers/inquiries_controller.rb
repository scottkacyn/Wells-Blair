class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    @inquiry.request = request
    if @inquiry.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message.'
      redirect_to root_path
    end
  end
end