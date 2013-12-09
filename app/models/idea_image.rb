class IdeaImage < ActiveRecord::Base

	belongs_to :idea

	validates :image, :presence => true
	validates :idea, :presence => true

	mount_uploader :image, ImageUploader


end
