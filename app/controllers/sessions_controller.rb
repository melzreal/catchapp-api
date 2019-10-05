class SessionsController < ApplicationController

	def create	
		 @user = User.find_by(email: params[:user][:email])
		

		 if @user && @user.authenticate(params[:user][:password]) 
		 	render json: {
		 		name: @user.name,
		 		email: @user.email,
		 		id: @user.id } 

		 else 
		   response = {
		   	error: "Invalid credentials",
		   	details: @user.errors.full_messages
		   }
		   puts response
		   render json: response, status: 401

		 end 


	end

	def delete
	end 


end
