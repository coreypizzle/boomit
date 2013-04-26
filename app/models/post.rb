class Post < ActiveRecord::Base
  attr_accessible :status, :author, :username, :id, :user_id, :user, :website, :bio, :skype, :dob, :age, :email, :motto, :follower, :followable, :votes
  belongs_to :user
  has_many :likes


  validates :status, :presence => true

  acts_as_likeable
  acts_as_votable

end
