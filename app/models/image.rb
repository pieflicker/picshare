class Image < ApplicationRecord

	mount_uploader :image, ImagesUploader
	serialize :images, JSON
end