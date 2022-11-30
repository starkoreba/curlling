class RenameTableUsersBadges < ActiveRecord::Migration[7.0]
  def change
    rename_table :users_badges, :user_badges
  end
end
