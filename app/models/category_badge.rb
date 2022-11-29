class CategoryBadge < ApplicationRecord
  belongs_to :category
  belongs_to :badge
end
