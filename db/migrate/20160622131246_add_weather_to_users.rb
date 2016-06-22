class AddWeatherToUsers < ActiveRecord::Migration
  def change
    add_column :users, :weather, :string
  end
end
