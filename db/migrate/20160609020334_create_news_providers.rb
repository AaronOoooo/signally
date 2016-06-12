class CreateNewsProviders < ActiveRecord::Migration
  def change
    create_table :news_providers do |t|
      t.string :name
      t.string :company_logo_image

      t.timestamps null: false
    end
  end
end
