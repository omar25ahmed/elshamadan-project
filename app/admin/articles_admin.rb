Trestle.resource(:articles) do
  menu do
    item :articles, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :body
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #add dialog to true
  form do |article|
    tab :article do
      text_field :title
      text_area :body
      form_group :cover do
        concat image_tag(article.cover.url) if article.cover.attached?
        raw_file_field :cover
      end
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
  #   params.require(:article).permit(:name, ...)
  # end
end
