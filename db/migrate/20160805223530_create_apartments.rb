class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.string :name
      t.belongs_to :landlord, foreign_key: true
      t.string :street_address
      t.string :city
      t.string :state
      t.date :start_date
      t.date :end_date
      t.string# :rent_price

      t.timestamps
    end
  end
end
