class Event < ApplicationRecord
  belongs_to :performer_profile

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo

  has_many :comments

  validates :location, presence: true
end
