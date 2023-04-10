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

  def about
    @members = members
  end

  private

  def contact_params
    params.permit(:name, :email, :phone, :message)
  end

  def members
    [
      {
        name: "Suhaila Mahmoud",
        image: "members/suhaila-mahmoud.jpg",
      },
      {
        name: "Yasser Bahaa",
        image: "members/Yasser-Bahaa-2.jpg",
      },
      {
        name: "Maryam Mohammed",
        image: "members/Maryam-Mohammed.jpg",
      },
      {
        name: "Ahmed Emad",
        image: "members/Ahmed-Emad.jpg",
      },
      {
        name: "Mahmoud Emad",
        image: "members/Mahmoud-Emad.jpg",
      },
      {
        name: "Maha Mohammed",
        image: "members/Maha-Mohammed.jpg",
      },
      {
        name: "Manar Ahmed",
        image: "members/Manar-Ahmed.jpg",
      },
      {
        name: "Omar Ragheb",
        image: "members/Omar-Ragheb.jpg",
      },
      {
        name: "Nada Hassan",
        image: "members/Nada-Hassan.jpg",
      },
      {
        name: "Habiba Hesham",
        image: "members/Habiba-Hesham.jpg",
      },
      {
        name: "Hager Mustafa",
        image: "members/Hager-Mustafa.jpg",
      },
      {
        name: "Mostafa Doma",
        image: "members/Mostafa-Doma.jpg",
      },
      {
        name: "Maryam Mustafa",
        image: "members/Maryam-Mustafa.jpg",
      },
      {
        name: "Abdallah Alaa",
        image: "members/Abdallah-Alaa.jpg",
      },
      {
        name: "Farag Adel",
        image: "members/Farag-Adel.jpg",
      },
      {
        name: "Ahmed Wagih",
        image: "members/Ahmed-Wagih.jpg",
      },
      {
        name: "Rahma Mohsen",
        image: "members/Rahma-Mohsen.jpg",
      },
      {
        name: "Fatma Sameh",
        image: "members/Fatma-Sameh.jpg",
      },
      {
        name: "Amal Fares",
        image: "members/Amal-Fares.jpg",
      },
      {
        name: "Ali Gamal",
        image: "members/Ali-Gamal.jpg",
      },
      {
        name: "Rana Ahmed",
        image: "members/Rana-Ahmed.jpg",
      },
    ]
  end
end
