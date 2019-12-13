class ReviewSerializer < ActiveModel::Serializer
  attributes :stars, :description
  belongs_to :user
  belongs_to :place
end
