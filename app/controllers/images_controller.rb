class ImagesController < ApplicationController

	before_action :require_user

	def index
		@images = Image.all
	end

	def show
		@image = Image.find(params[:id])
	end

	def new
		@image = Image.new		
	end

	def create
		@image = Image.new(image_params)
			if @image.save
				redirect_to root_url
			else
				render 'upload'
			end
	end

	def my_images
		@my_images = Image.where(uploaded_by: current_user)
	end

	def gallery
		@uploaders = Image.all.each do |u|
			u.uploaded_by
		end
		@uploaders_u = @uploaders.uniq
		
	end


private

	def image_params
		params.require(:image).permit(:image, :uploaded_by, :uploader_name)
	end
  
  def secret
  	#notes
  end
end
