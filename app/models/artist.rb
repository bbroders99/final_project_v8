class Artist < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :ideas
	has_many :portfolio_images
	has_many :bids

	#validates :first_name, :presence => true
	#validates :last_name, :presence => true
	#validates :bio, :presence => true

	def full_name
    	return first_name + " " + last_name
	end

end
