Trestle.resource(:products) do
  menu do
    item :products, icon: "fa fa-star"
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
  form do |product|
    text_field :name
    text_field :description
    text_field :name_ar
    text_field :description_ar
    number_field :price
    number_field :units
    number_field :package_price
    # belongs_to :brand, collection: Brand.all
    select :brand_id, Brand.all.map { |brand| [brand.name, brand.id] }
    row do
      col { datetime_field :updated_at }
      col { datetime_field :created_at }
    end
    form_group :thumbnail do
      concat image_tag(product.thumbnail.url) if product.thumbnail.attached?
      raw_file_field :thumbnail
    end
    file_field :images, multiple: true
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:product).permit(:name, ...)
  # end
end
