class MessagesController < ApplicationController
  include ApplicationHelper
  skip_before_action :verify_authenticity_token

  def index
    # @message = 'horse'
    @message = Message.new
  	# @message = Message.new
  	@users = User.all
    @messages = Message.all
    # @messages = Message.order('created_at DESC')
  end

   def user
   	@users = User.all
   	@is_login = true
   end

   

  def update
 @message = Message.find(params[:id])
 if @message.update_attributes(params.require(:message).permit(:user_id, :content))
 redirect_to messages_path
else
 render 'edit' 
end
end
  
  def create
  	@message = Message.new(message_params)
    if @message.save
    	redirect_to messages_path
      # format.html {redirect_to root_url}
      # format.js
    else
    	render 'index'

    end

  end

private

def message_params
  params.require(:message).permit(:user_id, :content)
end

end




