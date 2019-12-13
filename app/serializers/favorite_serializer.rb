class FavoriteSerializer < ActiveModel::Serializer
  attributes :user, :place
  belongs_to :user
  belongs_to :place
end
