class User < ActiveRecord::Base
	validates :username, length:  {minimum: 4, maximum: 30}
	has_many	:posts
	has_many	:comments
	validates_uniqueness_of	:email
	validates :email, confirmation: true
	validates_presence_of :username, :fname, :lname, :email, :bio, :password, :city, :state, :country

end
