class RemoveMainStoryFromStory < ActiveRecord::Migration
  def up
    remove_column :stories, :main_story
  end

  def down
    add_column :stories, :main_story, :text
  end
end
