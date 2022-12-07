# table de jointure user->activity
class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validates :user, uniqueness: { scope: :activity }
  # add a participate_at date?
end
