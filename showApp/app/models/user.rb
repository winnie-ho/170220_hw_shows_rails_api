#favourites is the alias
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favourite_shows
  has_many(:favourites,
   {
    through: :favourite_shows,
    source: :show
    })
end
