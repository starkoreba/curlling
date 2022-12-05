class PrivateMessage < ApplicationRecord
  belongs_to :activity
  belongs_to :user
  has_many :messages

  validates :content, presence: true
end
