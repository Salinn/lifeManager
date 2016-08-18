class CreateBoughtItems < ActiveRecord::Migration[5.0]
  def change
    create_table :bought_items do |t|
      t.string :name
      t.string :price
      t.belongs_to :apartment, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
