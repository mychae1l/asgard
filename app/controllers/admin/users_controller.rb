class Admin::UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		if
			@user.destroy

			redirect_to admin_users_path
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user.update(users_params)
		redirect_to admin_user_path(@user)
	end

	private
	def users_params
		params.require(:user).permit(:firsname, :email, :category)
	end

end
