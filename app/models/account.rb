class Account < ApplicationRecord
  has_one :user
  has_many :all_apartments, dependent: :destroy
  has_many :apartments, through: :all_apartments

  def name
    first_name + " " + last_name
  end

  def current_apartment
    return nil if apartments.empty?
    apartments.reverse.each.each do |apartment|
      if Date.today > apartment.start_date && Date.today < apartment.end_date
        return apartment
      end
    end
    nil
  end
end
