class Product < ApplicationRecord
  belongs_to :brand
  has_one_attached :thumbnail
  has_many_attached :images
end
