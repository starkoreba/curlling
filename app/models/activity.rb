class Activity < ApplicationRecord
  after_create :create_private_message

  belongs_to :category
  belongs_to :user
  has_one :private_message
  has_many :participations
  has_many :users, through: :participations

  has_many_attached :photos
  has_one_attached :picture

  enum :progress, { pending: 0, in_progress: 1, archive: 2, cancel: 3 }
  validates :title, :description, :address, :start_date, :end_date, presence: true
  validates :description, length: { minimum: 3 }
  validates :end_date, comparison: { greater_than: :start_date }

  def create_private_message
    PrivateMessage.create(activity: self, user: self.user)
  end

  include PgSearch::Model
  pg_search_scope :search_by_title_and_category,
    against: [ :title ],
    associated_against: {
      category: [ :name ]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

    include PgSearch::Model
    pg_search_scope :search_by_address,
      against: [ :address ],
      using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }

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
