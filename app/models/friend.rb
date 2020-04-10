class Friend < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
