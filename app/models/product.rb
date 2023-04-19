class Product < ApplicationRecord
  validates :name, :description, :name_ar, :description_ar, presence: true
  validates :description, :description_ar, length: { maximum: 100 }
  belongs_to :brand
  has_one_attached :thumbnail
  has_many_attached :images
end
