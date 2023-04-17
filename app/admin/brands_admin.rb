Trestle.resource(:brands) do
  menu do
    item :brands, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  form do |brand|
    text_field :name
    text_field :description
    text_field :name_ar
    text_field :description_ar
    form_group :logo do
      concat image_tag(brand.logo.url) if brand.logo.attached?
      raw_file_field :logo
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:brand).permit(:name, ...)
  # end
end
