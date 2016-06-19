class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :type
      t.string :publisher
      t.string :url

      t.timestamps null: false
    end
  end
end
