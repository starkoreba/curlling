class Activity < ApplicationRecord
  belongs_to :category
  belongs_to :users

  enum :progress, { pending: 0, in_progress: 1, archive: 2, cancel: 3 }, default: :pending
  validates :title, :description, :address, :start_date, :end_date, presence: true
  validates :description, length: { minimum: 3 }
  validates :end_date, comparison: { greater_than: :start_date }
end
