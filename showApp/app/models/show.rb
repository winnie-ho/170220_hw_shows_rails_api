#favourited_by is an alias
class Show < ApplicationRecord
  has_many :favourite_shows
  has_many(:favourited_by,
   {
    through: :favourite_shows,
    source: :user
    })
end
