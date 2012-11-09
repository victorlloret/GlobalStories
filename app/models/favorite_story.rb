class FavoriteStory < ActiveRecord::Base
  attr_accessible :integer, :story_id, :user_id
  belongs_to :story
  belongs_to :user
end
