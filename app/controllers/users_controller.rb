class UsersController < ApplicationController

	def index

	end	
	
	def show
		require_login
		@user = User.find_by(id: params[:id])
	end

	def new
		@user = User.new
	end

	def create
		if params[:user][:password] != params[:user][:password_confirmation]
			redirect_to new_user_path
		else
			@user = User.create(user_params)
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		end
	end


	private

	def user_params
		params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :password_confirmation, :admin)
	end

end