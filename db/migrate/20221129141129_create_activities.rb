class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :address, null: false
      t.datetime :start_date, null: false
      t.datetime :end_date, null: false
      t.integer :price
      t.integer :progress
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
