class Event < ApplicationRecord
  belongs_to :performer_profile

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_one_attached :photo

  has_many :comments

  validates :location, presence: true

  scope :not_over, -> { where("ends_at > ?", Time.current) }
  scope :now, -> { where("? BETWEEN starts_at AND ends_at", Time.current) }
  scope :soon, -> { where("starts_at > ?", Time.current) }

  def now?
    (starts_at..ends_at).include?(Time.current)
  end

  def state
    now? ? "stream" : "soon"
  end
end
