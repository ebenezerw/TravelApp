class Destination < ApplicationRecord
  has_many :interests, dependent: :destroy
end
