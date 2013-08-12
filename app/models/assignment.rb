class Assignment < ActiveRecord::Base
  attr_accessible :due_date, :pdf_file, :title

  mount_uploader :pdf_file, PdfUploader

  has_many :assignment_posts
  has_many :posts , through: :assignment_posts

  default_scope order("due_date")

  scope :next, where("due_date >= ?", Date.today).limit(4)
end
