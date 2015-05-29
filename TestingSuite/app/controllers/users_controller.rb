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
	end


	def create
		@user = User.new(user_params)
		if @user.save 
			redirect_to users_path
		else	
			render :new
		end	
	end

	 def destroy
		@user.destroy
		respond_to do |format|
		format.html { redirect_to user, notice: 'Item was successfully destroyed.' }
		
	end
  end

	private 
	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :password, :companyname)
	end

	def set_item
      @item = User.find(params[:id])
    end

end

