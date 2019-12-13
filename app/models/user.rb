class User < ApplicationRecord
    has_many :reviews
    has_many :favorites
    has_many :places, through: :favorites
    has_many :places, through: :reviews
end

