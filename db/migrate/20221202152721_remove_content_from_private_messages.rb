class RemoveContentFromPrivateMessages < ActiveRecord::Migration[7.0]
  def change
    remove_column :private_messages, :content
  end
end
