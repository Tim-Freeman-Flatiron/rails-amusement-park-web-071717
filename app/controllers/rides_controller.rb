class RidesController < ApplicationController

	
	def ride
		@attraction = Attraction.find_by(id: params[:id])
		@user = User.find_by(id: session[:user_id])
		@ride = Ride.create(attraction_id: @attraction.id, user_id: @user.id)
		# flash[:message] = "Thanks for riding the #{@attraction.name}!"
		flash[:message] = @ride.take_ride
		redirect_to user_path(@user) 
	end

end