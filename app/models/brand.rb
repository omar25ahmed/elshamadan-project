class Brand < ApplicationRecord
  validates :name, :description, :name_ar, :description_ar, presence: true
  validates :logo, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']
  has_many :products
  has_one_attached :logo
end
