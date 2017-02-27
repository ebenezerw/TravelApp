class Destination < ApplicationRecord
  validates :place,  presence: true, length: {minimum: 2}
  validates :traveler_name,  presence: true, length: {minimum: 4}
  validates :start_date,  presence: true
  validates :end_date,  presence: true

  has_many :interests, dependent: :destroy
end
