class User < ActiveRecord::Base
	has_many	:posts
	has_many	:comments
	validates_uniqueness_of	:email
	validates_presence_of :username, :fname, :lname, :email, :bio, :password, :city, :state, :country

end
