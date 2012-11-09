class Chapter < ActiveRecord::Base
  attr_accessible :created_by, :creation_date, :image, :main_chapter, :story_id, :subtitle
  mount_uploader :image, ChapterImagesUploader
  belongs_to :story
  belongs_to :user
end
