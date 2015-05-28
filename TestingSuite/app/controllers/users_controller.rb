class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
	
	end

	def new
	end

	def edit
	end


	def create
		@user = User.new(user_params)
		if @user.save 
			render status: 201
		else	
			render :new, status: 422
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
		parmas.require(:user).permit(:firstname, :lastname, :email, :password, :companyname)
	end

	def set_item
      @item = User.find(params[:id])
    end

end

