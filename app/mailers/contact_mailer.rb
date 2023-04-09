class ContactMailer < ApplicationMailer
  def new_contact_mailer
    mail(to: ENV['MAILER_TO'], subject: 'New contact form submission')
  end
end
