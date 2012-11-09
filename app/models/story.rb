class Story < ActiveRecord::Base
  attr_accessible :created_by, :creation_date, :genre, :intro, :main_story, :number_of_writers, :title
  has_many :chapters
  belongs_to :user

  has_many :favorite_stories 
  has_many :favorited_by, through: :favorite_stories, source: :user 

  def main_story
    chapters.pluck(:main_chapter).join('<br/>').html_safe
    #content_tag(:b, chapters.pluck(:main_chapter).join("\n").html_safe )
  end

end
