class PerformerProfile < ApplicationRecord
  belongs_to :user

  has_many :events, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  validates :user, uniqueness: true
end
