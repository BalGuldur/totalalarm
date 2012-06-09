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

	def index
		@user=User.new
		@users=User.all
	end

	def create
		@user=User.new
		@user.username=params[:user][:username]
		@user.password=params[:user][:password]
		@user.email=params[:user][:email]
		if @user.save
			redirect_to users_path, :notice => "user created succefull"
		else
			redirect_to users_path, :notice => "error not created"
		end
	end
end
