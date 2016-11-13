class ChatController < ApplicationController
  def index
    @chat_props = {
      user: User[session[:user_id]]
    }
  end

  def conversations
    data = []
    User.each do |user|
      data << {
        user: user,
      }
    end
    render json: data
  end
end
