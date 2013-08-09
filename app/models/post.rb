class Post < ActiveRecord::Base
  attr_accessible :description, :image_1, :image_2, 
  								:image_3, :link, :title, :video,
  								:tag_list
  
  mount_uploader :image_1, ImageUploader
  mount_uploader :image_2, ImageUploader
  mount_uploader :image_3, ImageUploader

  acts_as_taggable

end
