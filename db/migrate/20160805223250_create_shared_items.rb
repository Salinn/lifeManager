class CreateSharedItems < ActiveRecord::Migration[5.0]
  def change
    create_table :shared_items do |t|
      t.string :name
      t.string :photo
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
