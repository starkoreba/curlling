class UserBadge < ApplicationRecord
  belongs_to :giver, class_name: "User"
  belongs_to :receiver, class_name: "User"
  belongs_to :badge
  belongs_to :activity
end
