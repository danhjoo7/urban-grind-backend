class UserSerializer < ActiveModel::Serializer
  attributes :username, :name, :residence, :age, :occupation, :profile_pic
  has_many :reviews
  has_many :favorites
  has_many :places, through: :favorites
  has_many :places, through: :reviews
end
