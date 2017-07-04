class ImagesController < ApplicationController

	before_action :require_user

	def index
		@images = Image.all
	end

	def show
		@image = Image.find(params[:id])

		@next_image = @image.id# += 1
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
		@uploaders = Image.all
		@uploaders_u = @uploaders.uniq{|t| t.uploaded_by }
	end

	def gallery_view
		@gallery = Image.where(uploaded_by: @uploaders_u)
	end


private

	def image_params
		params.require(:image).permit(:image, :uploaded_by, :uploader_name)
	end
  
  def secret
  	#notes
  end
end
