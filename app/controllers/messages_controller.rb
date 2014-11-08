class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  	@message = Message.new
  	@users = User.all
    @messages = Message.order('created_at DESC')
  end

  # def user
  # 	@users = User.all
  # 	@is_login = true
  # end
  
  def create
  	@message = Message.new(message_params)
    if @message.save
    	redirect_to messages_path
      # format.html {redirect_to root_url}
      format.js
    else
    	render 'index'

    end

  end

private

def message_params
  params.require(:message).permit(:user_id, :content)
end

end




