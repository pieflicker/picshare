class UsersController < ApplicationController
  
  def new
  	@user = User.new
  end


  def create
  	@user = User.new(user_params)
  		
  		if @user[:event_pin] == event_pin
		  	@user[:email] = @user[:email].downcase
		  	if @user.save
		  		session[:user_id] = @user.id
		  		redirect_to '/'
		  	else
		  		flash[:notice] = "Something went wrong"
		  		redirect_to '/signup'
		  	end
			
			else
				flash[:notice] = "Incorrect PIN"
				redirect_to '/signup'
		  end
  end


private

	def user_params
		params.require(:user).permit(:email, :first_name, :password, :password_confirmation, :event_pin)
		
	end

	def event_pin
		event_pin = "110317"
	end
end
