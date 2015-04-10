class Inquiry < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone
  attribute :message

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "New Website Inquiry",
      :to => "info@wellsblair.com, jb@wellsblair.com, tberchou@wellsblair.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end