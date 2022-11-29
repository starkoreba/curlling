class CreateCategoryBadges < ActiveRecord::Migration[7.0]
  def change
    create_table :category_badges do |t|
      t.references :category, null: false, foreign_key: true
      t.references :badge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
