class Post < ActiveRecord::Base
  attr_accessible :name, :content, :user_id, :category_id
  validates :name, :presence => true
  validates :content, :presence => true

  belongs_to :user
  belongs_to :category
end
