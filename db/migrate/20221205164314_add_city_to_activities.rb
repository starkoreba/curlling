class AddCityToActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :city, :string
  end
end
