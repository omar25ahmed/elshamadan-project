class HomeController < ApplicationController
  def index
  end

  def about
    @members = members
  end

  private

  def members
    [
      {
        name: "Suhaila Mahmoud",
        image: "members/Suhaila-Mahmoud.jpeg",
      },
      {
        name: "Yasser Bahaa",
        image: "members/Yasser-Bahaa-2.jpeg",
      },
      {
        name: "Maryam Mohammed",
        image: "members/Maryam-Mohammed.jpeg",
      },
      {
        name: "Ahmed Emad",
        image: "members/Ahmed-Emad.jpeg",
      },
      {
        name: "Mahmoud Emad",
        image: "members/Mahmoud-Emad.jpeg",
      },
      {
        name: "Maha Mohammed",
        image: "members/Maha-Mohammed.jpeg",
      },
      {
        name: "Manar Ahmed",
        image: "members/Manar-Ahmed.jpeg",
      },
      {
        name: "Omar Ragheb",
        image: "members/Omar-Ragheb.jpeg",
      },
      {
        name: "Nada Hassan",
        image: "members/Nada-Hassan.jpeg",
      },
      {
        name: "Habiba Hesham",
        image: "members/Habiba-Hesham.jpeg",
      },
      {
        name: "Hager Mustafa",
        image: "members/Hager-Mustafa.jpeg",
      },
      {
        name: "Mostafa Doma",
        image: "members/Mostafa-Doma.jpeg",
      },
      {
        name: "Maryam Mustafa",
        image: "members/Maryam-Mustafa.jpeg",
      },
      {
        name: "Abdallah Alaa",
        image: "members/Abdallah-Alaa.jpeg",
      },
      {
        name: "Farag Adel",
        image: "members/Farag-Adel.jpeg",
      },
      {
        name: "Ahmed Wagih",
        image: "members/Ahmed-Wagih.jpeg",
      },
      {
        name: "Rahma Mohsen",
        image: "members/Rahma-Mohsen.jpeg",
      },
      {
        name: "Fatma Sameh",
        image: "members/Fatma-Sameh.jpeg",
      },
      {
        name: "Amal Fares",
        image: "members/Amal-Fares.jpeg",
      },
      {
        name: "Ali Gamal",
        image: "members/Ali-Gamal.jpeg",
      },
      {
        name: "Rana Ahmed",
        image: "members/Rana-Ahmed.jpeg",
      },
    ]
  end
end
