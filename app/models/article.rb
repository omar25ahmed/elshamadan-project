class Article < ApplicationRecord
  has_one_attached :cover
  validates :title, :body, presence: true
  validates :cover, attached: true
  validates :title, length: { minimum: 5 }
  validates :body, length: { minimum: 100 }
end
