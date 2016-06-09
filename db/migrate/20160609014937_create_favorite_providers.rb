class CreateFavoriteProviders < ActiveRecord::Migration
  def change
    create_table :favorite_providers do |t|
      t.integer :user_id
      t.integer :news_provider_id

      t.timestamps null: false
    end
  end
end
