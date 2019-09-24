class Api::CatchfriendsController < ApplicationController 

	before_action :set_catchfriend, only: [:show, :update, :destroy]

	def index
		render json: Catchfriend.all
	end 

	def create
		friend = Catchfriend.new(friend_params)

		if friend.save 
			render json: friend 
		else 
			render json: {message: friend.errors}, status: 400
		end 
	end 

	def show 
		render json: @catchfriend
	end 


	def update 
		if @catchfriend.update(friend_params) 
			render json: @catchfriend 
		else 
			render json: {message: @catchfriend.errors}, status: 400
		end 
	end 


	def destroy
		if @catchfriend.destroy
			render json: { message: "Deleted ! "}, status: 204
		else
			render json: { message: "Could not destroy ! "}, status: 400 
		end 
	end 

	private


	def set_catchfriend 
		@catchfriend = Catchfriend.find_by(id: params[:id])
	end 

	def friend_params	
		params.require(:catchfriend).permit(:friendname, :contact, :reached_out)

	end 


end 