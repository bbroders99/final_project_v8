class PortfolioImage < ActiveRecord::Base

	belongs_to :artist

	validates :image, :presence => true
	validates :artist, :presence => true

	mount_uploader :image, ImageUploader

end
