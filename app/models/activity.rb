class Activity < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :private_messages
  has_many :participations
  has_many :users, through: :participations

  has_many_attached :photos
  has_one_attached :picture

  enum :progress, { pending: 0, in_progress: 1, archive: 2, cancel: 3 }
  validates :title, :description, :address, :start_date, :end_date, presence: true
  validates :description, length: { minimum: 3 }
  validates :end_date, comparison: { greater_than: :start_date }

  # include PgSearch::Model
  # pg_search_scope :global_search,
  #                 against: %i[title address],
  #                 associated_against: {
  #                   category: [:name]
  #                 },
  #                 using: {
  #                   tsearch: { prefix: true }
  #                 }
  # multisearchable against: %i[title address]
end
