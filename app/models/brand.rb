class Brand < ApplicationRecord
  validates :name, :description, :name_ar, :description_ar, presence: true
  has_many :products
  has_one_attached :logo
end
