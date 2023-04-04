class ContactController < ApplicationController
  def index
    @contact = {}
    if request.post?
      puts "params: #{params}"
      flash[:notice] = 'Contact form submitted'
      render 'contact/index'
    end
  end
end
