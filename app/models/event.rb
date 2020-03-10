class Event < ApplicationRecord
  belongs_to :performer_profile

  has_many :tips, dependent: :destroy
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo

  validates :location, presence: true
end
