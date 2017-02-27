class Interest < ApplicationRecord
  validates :traveler_name,  presence: true, length: {minimum: 4}
  validates :start_date,  presence: true
  validates :end_date,  presence: true
  validates :comment, presence: true, length: {minimum: 10}

  belongs_to :destination
end
