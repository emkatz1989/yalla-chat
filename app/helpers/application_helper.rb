module ApplicationHelper
	def broadcast(channel, &block)
		message = {:channel => channel, :data => capture(&block)}
		uri = URI.parse("http://localhost:9292/faye")
		Net::HTTP.post_form(uri, :message => message.to_json)
	end

	def current_user
		return unless session[:user_id]
		@current_user ||= User.find(session[:user_id])
	end
end
