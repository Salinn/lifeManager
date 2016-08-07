class AllApartment < ApplicationRecord
  belongs_to :apartment
  belongs_to :account
end
