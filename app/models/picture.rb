class Picture < ApplicationRecord

	mount_uploader :image
	serialize :images, JSON
end
