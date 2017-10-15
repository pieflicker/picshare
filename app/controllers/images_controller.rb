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
				render 'new'
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
  	find_url = request.original_fullpath
  	gallery_contents = find_url[-1]
  	#@gallery_gen = Image.where (uploaded_by: gallery_contents)
	end


private

	def image_params
		params.require(:image).permit(:uploaded_by, :uploader_name, :image)
	end

  def secret
  	
  end
end
