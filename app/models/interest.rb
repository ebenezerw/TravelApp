class Interest < ApplicationRecord
  validates :start_date,  presence: true
  validates :end_date,  presence: true
  validates :comment, presence: true, length: {minimum: 3}

  belongs_to :destination
end
