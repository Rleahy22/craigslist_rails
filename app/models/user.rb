require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  validates :email, :uniqueness => true
  validates_format_of :email, :with => /\w+@w+\.[a-zA-Z]{2,}/
  validates :name, :presence => true

  has_many :posts

  # bcrypt password hashing and checking
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
