class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true
  has_many :journals
  has_many :bucketlists
  has_many :notes
  has_many :brainstorms

  accepts_nested_attributes_for :notes
end
