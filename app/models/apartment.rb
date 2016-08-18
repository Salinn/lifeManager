class Apartment < ApplicationRecord
  belongs_to :landlord
  accepts_nested_attributes_for :landlord

  has_many :all_apartments, dependent: :destroy
  has_many :accounts, through: :all_apartments

  has_many :bills
  has_many :bought_items
  has_many :shared_items
  has_many :needed_items
end
