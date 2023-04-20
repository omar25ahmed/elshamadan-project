class Product < ApplicationRecord
  validates :name, :description, :name_ar, :description_ar, presence: true
  validates :description, :description_ar, length: { maximum: 100 }
  validates :thumbnail, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']
  belongs_to :brand
  has_one_attached :thumbnail
  has_many_attached :images
end
