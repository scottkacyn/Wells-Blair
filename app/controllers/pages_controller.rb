class PagesController < ApplicationController
  def index
    @headlines = HomepageHeadline.all
    @jobs = Job.all.limit(5)
    @contact = Headline.find_by(page: "Contact") || Headline.new(page: "Contact", title: "Start A Conversation", subtitle: "If you're a company looking for great talent or a tax specialist looking to improve your career, fill out the form below and we'll get in touch with you.")
  end

  def client_solutions
    @headline = Headline.find_by(page: "Client Solutions") || Headline.new(page: "Client Solutions", title: "Specialized Tax Recruitment Solutions", subtitle: "With over 50 years of recruiting experience, the Wells Blair team can provide your tax department with the ideal end-to-end recruiting solution that will meet the challenges of your project, whether you are hiring one new position or building a new tax group. Attracting and retaining high-performing tax professionals is very challenging. We can provide your corporate tax department with proven strategies that many major companies are implementing to achieve world-class tax departments.")
    @strategies = Strategy.all.order(:position => :asc)
  end

  def contact
    @headline = Headline.find_by(page: "Contact") || Headline.new(page: "Contact", title: "Start A Conversation", subtitle: "If you're a company looking for great talent or a tax specialist looking to improve your career, fill out the form below and we'll get in touch with you.")
  end

  def tax_opportunities
    @jobs = Job.all
    @headline = Headline.find_by(page: "Tax Opportunities") || Headline.new(page: "Tax Opportunities", title: "Tax Opportunities", subtitle: "Browse our open positions in Chicago and Houston.")
  end

  def about
    @bullets = AboutBullet.all
    @partners = Partner.all
    @testimonials = Testimonial.all
    @headline = Headline.find_by(page: "Who We Are") || Headline.new(page: "Who We Are", title: "GREAT PEOPLE. GREAT JOBS.", subtitle: "We are a team of experienced recruiters who believe in doing things the right way. Our team represents each client opportunity and candidate search with integrity and expertise.")
  end

  def services
    @specialties = Specialty.all
    @headline = Headline.find_by(page: "What We Do") || Headline.new(page: "What We Do", title: "Our Difference Is Specialization", subtitle: "The Wells Blair approach is focused on specialized tax recruiting.  We work all day everyday building relationships with high-performing tax professionals and large corporate tax departments. The end result is an unmatched network of passive tax professionals who seek the right opportunity for their career and an exclusive roster of clients who seek qualified tax professionals that will provide value-added experience to their teams.")
  end
end
