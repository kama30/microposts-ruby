class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :reserves_of_favorites, class_name: 'Favorite', foreign_key: 'micropost_id'
  has_many :users, through: :reserves_of_favorites, source: :user
end
