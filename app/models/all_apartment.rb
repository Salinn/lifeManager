class AllApartment < ApplicationRecord
  belongs_to :apartment
  belongs_to :person
end
