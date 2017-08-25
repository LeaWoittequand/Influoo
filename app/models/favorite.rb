class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :influencer

  validates :influencer, uniqueness: true
end
