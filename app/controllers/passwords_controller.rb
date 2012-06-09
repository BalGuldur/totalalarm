class PasswordsController < ApplicationController
	before_filter :authenticate_user!

	def edit
		@user=current_user
	end

	def update
		@user=current_user
		# raise params.inspect
		if @user.update_with_password(params[:user])
			sign_in(@user, :bypass => true)
			redirect_to change_pass_user_path, :notice => "Your Pass has been updated!"
		else
			render :edit, :locals => { :resource => @user, :resource_name => "user" }
		end
	end
end
