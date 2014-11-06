class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  	@messages = Message.all
  	@message = Message.new
  	@users = User.all
  end

  # def user
  # 	@users = User.all
  # 	@is_login = true
  # end
  
  def create
  	@message = Message.new(params.require(:message).permit(:user_id, :content))
    if @message.save
    	redirect_to messages_path
    else
    	render 'index'
    end

  end
end



