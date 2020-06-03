class ConstellationSerializer < ActiveModel::Serializer 
  attributes :name, :description, :image_url, :id, :season_id

  belongs_to :season
  has_many :likes
end