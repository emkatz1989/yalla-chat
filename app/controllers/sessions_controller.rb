class SessionsController < ApplicationController
  def new
  	@user = User.new
  	@is_login = true
  end

  def create
  	# Find the user that is trying to log in		
	u = User.where(username: params[:user][:username]).first 
	#And if they have the right password...
	if u && u.authenticate(params[:user][:password])
		# '.where' always returns an array, so we only want first member
		# Store as a cookie in the users' browser the ID of them,
		# indicating that they are logged in
		#saves long hexadecimal ID nonsense in password
	    session[:user_id] = u.id.to_s
	    redirect_to chatrooms_path #go to chatroom page
  	else
  	    flash.now.alert = "Invalid username or password"
  		render "new"
  	end
  end

  def destroy
  	reset_session
	redirect_to new_sessions_path
  end
end
