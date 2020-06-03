class LikeSerializer < ActiveModel::Serializer 
  attributes :like_count

  belongs_to :user
  belongs_to :constellation
end