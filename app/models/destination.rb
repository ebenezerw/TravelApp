class Destination < ApplicationRecord

  default_scope { order('updated_at DESC') }
  validates :place,  presence: true, length: {minimum: 2}
  validates :start_date,  presence: true
  validates :end_date,  presence: true


  has_many :interests, dependent: :destroy
  belongs_to :user
end
