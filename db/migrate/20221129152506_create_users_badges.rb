class CreateUsersBadges < ActiveRecord::Migration[7.0]
  def change
    create_table :users_badges do |t|
      t.references :giver, null: false, foreign_key: { to_table: :users }
      t.references :receiver, null: false, foreign_key: { to_table: :users }
      t.references :badge, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
