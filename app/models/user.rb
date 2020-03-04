class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tips, dependent: :destroy
  has_one :performer_profile, dependent: :destroy
  has_many :reviews, through: :performer_profile

  scope :performer, -> { joins(:performer_profile) }

  def performer?
    performer_profile.present?
  end
end
