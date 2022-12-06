class Activity < ApplicationRecord
  after_create :create_private_message

  belongs_to :category
  belongs_to :user
  has_one :private_message
  has_many :participations
  has_many :users, through: :participations
  has_many :badges, through: :category_badges

  has_many_attached :photos
  has_one_attached :picture

  enum :progress, { pending: 0, in_progress: 1, archive: 2, cancel: 3 }
  validates :title, :description, :address, :start_date, :end_date, presence: true
  validates :description, length: { minimum: 3 }
  validates :end_date, comparison: { greater_than: :start_date }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  after_validation :assign_city

  def assign_city
    address = Geocoder.search(self.address)&.first&.data["address"]
    self.city = address["city"] || address["town"]
  end

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
                    tsearch: { prefix: true }
                  }

  include PgSearch::Model
  pg_search_scope :search_by_address,
                  against: [ :address ],
                  using: {
                    tsearch: { prefix: true }
                  }
end
