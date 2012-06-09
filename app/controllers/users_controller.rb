class UsersController < ApplicationController
	def change_pass
		@user=current_user
	end
	def update
		@user=User.find(params[:id])
		@user.password=params[:user][:password]
		@user.save
		redirect_to change_pass_user_path
	end
end
