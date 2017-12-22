class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
  has_many :journals
end
