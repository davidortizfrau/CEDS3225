class AssignmentPost < ActiveRecord::Base
  belongs_to :post
  belongs_to :assignment
end