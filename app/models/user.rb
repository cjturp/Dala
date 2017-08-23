class User < ApplicationRecord
  has_many :exp_points
  has_many :games
  belongs_to :game
end
