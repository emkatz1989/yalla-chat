class SessionsController < ApplicationController
  def new
  	# Present an empty login form
  	@user = User.new
  	@is_login = true
  end
#signup is going here
  def create
  	# Find the user that is trying to log in		
	u = User.where(username: params[:user][:username]).first 
	# raise u (for checking if the line is working)
	#And if they have the right password...
	if u && u.authenticate(params[:user][:password])
		# '.where' always returns an array, so we only want first member
		# Store as a cookie in the users' browser the ID of them,
		# indicating that they are logged in
		#saves long hexadecimal ID nonsense in password
	    session[:user_id] = u.id.to_s
	    redirect_to messages_path #go to chatroom page
  	else
  	    # Go back to the login page
		redirect_to new_session_path
  	end
  end

  def destroy
  reset_session
	redirect_to new_sessions_path
  end
end
