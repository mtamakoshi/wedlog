class User < ActiveRecord::Base
	validates_uniqueness_of :email
	validates_presence_of :username, :fname, :lname, :email, :bio, :password, :city, :state, :country

end
