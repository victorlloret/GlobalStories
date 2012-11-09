class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.text :intro
      t.text :main_story
      t.string :genre
      t.integer :number_of_writers
      t.integer :created_by
      t.datetime :creation_date

      t.timestamps
    end
  end
end
