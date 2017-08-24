class User < ApplicationRecord
  # has_many :exp_points
 # belongs_to :game
  has_one :user_answer
  
  validates :name, presence: true
  validates :email, presence: true
end
