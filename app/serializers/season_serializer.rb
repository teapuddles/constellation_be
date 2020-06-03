class SeasonSerializer < ActiveModel::Serializer 
  attributes :name

  has_many :constellations
end
