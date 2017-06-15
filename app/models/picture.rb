class Picture < ApplicationRecord

	mount_uploader :images
	serialize :images, JSON
end
