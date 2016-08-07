class CreateAllApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :all_apartments do |t|
      t.belongs_to :apartment, foreign_key: true
      t.belongs_to :account, foreign_key: true

      t.timestamps
    end
  end
end
