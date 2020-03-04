class PerformerProfile < ApplicationRecord
  belongs_to :user

  has_many :events, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :user, uniqueness: true
end
