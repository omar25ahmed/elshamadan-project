class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :units
      t.float :package_price
      t.string :name_ar
      t.text :description_ar
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
