class PagesController < ApplicationController
  def index
    @jobs = Job.all.limit(5)
  end

  def client_solutions
  end

  def contact
  end

  def tax_opportunities
    @jobs = Job.all
  end

  def about
  end

  def services
  end
end
