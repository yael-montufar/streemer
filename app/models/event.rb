class Event < ApplicationRecord
  belongs_to :performer_profile

  has_many :tips, dependent: :destroy
end
