class Dashboard < ActiveRecord::Base
  attr_accessible :status, :author, :email, :username, :id, :user_id, :user, :website, :bio, :skype, :dob, :age
  
  has_many :posts
  belongs_to :user
end
