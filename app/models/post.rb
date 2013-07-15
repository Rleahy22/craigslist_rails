class Post < ActiveRecord::Base
  validates :name, :presence => true
  validates :content, :presence => true

  belongs_to :user
  belongs_to :category
end
