class ChangePrivateMessages < ActiveRecord::Migration[7.0]
  def change
    change_table :private_messages do |t|
      t.remove :content
      t.string :name
    end
  end
end
