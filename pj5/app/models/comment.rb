class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :photo
  validates :comment, :presence => true
end
