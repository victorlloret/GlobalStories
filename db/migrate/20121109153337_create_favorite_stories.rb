class CreateFavoriteStories < ActiveRecord::Migration
  def change
    create_table :favorite_stories do |t|
      t.string :story_id
      t.string :integer
      t.integer :user_id

      t.timestamps
    end
  end
end
