class ContactMailer < ApplicationMailer
  def new_contact_mailer
    mail(to: 'bisquadGroup@gmail.com', subject: 'New contact form submission')
  end
end
