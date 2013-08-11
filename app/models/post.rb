class Post < ActiveRecord::Base
  attr_accessible :description, :image_1, :image_2, 
  								:image_3, :link, :title, :video,
  								:tag_list, :assignment_ids
  
  mount_uploader :image_1, ImageUploader
  mount_uploader :image_2, ImageUploader
  mount_uploader :image_3, ImageUploader

  acts_as_taggable

  has_many :assignment_posts
  has_many :assignments , through: :assignment_posts

  default_scope order('created_at desc')
end
