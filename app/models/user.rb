class User < ActiveRecord::Base

	validates :username, length:  {minimum: 4, maximum: 30}
	has_many	:posts, dependent: :destroy
	has_many	:comments
	validates_uniqueness_of	:email
	validates :email, confirmation: true, presence: true
	validates :password, confirmation: true, presence: true
	validates_presence_of :username, :fname, :lname, :email, :bio, :password, :city, :state, :country


	def self.find_by_email(email)
		User.where("lower(email) = ?", email.downcase).first
	end


  def self.find_by_username(username)
      User.where("lower(username) = ?", username.downcase).first
  end

  has_many :conversations, foreign_key: :sender_id
  
end
