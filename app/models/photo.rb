class Photo < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, as: :likeable
end
