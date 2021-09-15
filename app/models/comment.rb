class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :photo
  has_many :likes, as: :likeable
end
