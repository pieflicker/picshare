class ImagesController < ApplicationController

	def index
		@images = Image.all
	end

	def new
		@image = Image.new		
	end

	def show
		@image = Image.find(params[:id])
	end

	def create
		@image = Image.new(image_params)
			if @image.save
				redirect_to root_url
			else
				render 'images/new'
			end
	end


private

	def image_params
		params.require(:image).permit(:image, :uploaded_by, {images: []})
	end

end
