class BoughtItem < ApplicationRecord
  belongs_to :apartment
  belongs_to :user
end
