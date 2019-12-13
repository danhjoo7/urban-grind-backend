class PlaceSerializer < ActiveModel::Serializer
  attributes :name, :city, :hours, :wifi
  has_many :favorites
  has_many :reviews
  has_many :users, through: :favorites
  has_many :users, through: :reviews
end
