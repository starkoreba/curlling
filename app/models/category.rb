class Category < ApplicationRecord
  has_many :activities
  has_many :category_badges
  has_many :badges, through: :category_badges

  validates :name, presence: true
  validates :name, uniqueness: true
end
