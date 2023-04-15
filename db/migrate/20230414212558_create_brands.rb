class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.text :description
      t.string :name_ar
      t.text :description_ar

      t.timestamps
    end
  end
end
