class Image < ApplicationRecord

	mount_uploader :image, ImagesUploader
	#serialize :image, JSON
end