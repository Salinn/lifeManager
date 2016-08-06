class Apartment < ApplicationRecord
  belongs_to :landlord
  has_many :all_apartments, dependent: :destroy
  has_many :apartments, through: :lived_in_apartments
end
