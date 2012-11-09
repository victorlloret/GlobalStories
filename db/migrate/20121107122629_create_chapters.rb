class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :subtitle
      t.text :main_chapter
      t.integer :story_id
      t.string :image
      t.integer :created_by
      t.datetime :creation_date

      t.timestamps
    end
  end
end
