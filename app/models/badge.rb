class Badge < ApplicationRecord
  has_many :category_badges
  has_many :category, through: :category_badges

  validates :name, :icon, presence: true
end
