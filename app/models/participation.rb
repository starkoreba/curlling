class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  # ajouter une date à laquelle on s'inscrit a une activité?
end
