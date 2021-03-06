class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)
		if @user.save 
			redirect_to users_path
		else	
			render :new
		end	
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to user_path(@user), notice: "Your profile was succssfully updated."
		else
			render :edit
		end
	end

	def destroy
	@user.destroy
		respond_to do |format|
		format.html { redirect_to users_url, notice: 'Your profile was successfully deleted.' }
	end
  end

	private 
	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :password, :companyname)
	end


end

