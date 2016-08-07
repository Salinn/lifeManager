class Apartment < ApplicationRecord
  belongs_to :landlord
  accepts_nested_attributes_for :landlord

  has_many :all_apartments, dependent: :destroy
  has_many :accounts, through: :all_apartments
end
