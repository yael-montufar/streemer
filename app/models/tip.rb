class Tip < ApplicationRecord
  belongs_to :performer_profile
  belongs_to :user, optional: true

  monetize :amount_cents # amount
  # For $50
  # amount_cents 5000
  # amount 50
end
