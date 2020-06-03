class Season < ApplicationRecord
  has_many :constellations, :dependent => :destroy
end
