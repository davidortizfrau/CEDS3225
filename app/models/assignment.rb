class Assignment < ActiveRecord::Base
  attr_accessible :due_date, :pdf_file, :title

  mount_uploader :pdf_file, PdfUploader
end
