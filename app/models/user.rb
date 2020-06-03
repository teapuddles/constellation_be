class User < ApplicationRecord
  has_many :likes, :dependent => :destroy
  has_many :constellations, through: :likes
end
