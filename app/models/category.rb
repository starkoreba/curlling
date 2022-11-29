class Category < ApplicationRecord
  has_many :activities
  validates :name, presence: true
  validates :name, uniqueness: true
end
