class Tip < ApplicationRecord
  belongs_to :performer_profile
  belongs_to :user

  monetize :amount_cents
end
