class Constellation < ApplicationRecord
  has_many :likes, :dependent => :destroy
  has_many :users, through: :likes 

  belongs_to :season
end
