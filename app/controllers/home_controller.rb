class HomeController < ApplicationController
  def index
  end

  def contact
    @contact = {}
    return unless request.post?

    @contact = contact_params
    ContactMailer.with(contact: @contact).new_contact_mailer.deliver_now
    flash[:notice] = 'Contact form submitted, you will hear from us soon.'
    redirect_to action: 'contact'
  end

  private

  def contact_params
    params.permit(:name, :email, :phone, :message)
  end
end
