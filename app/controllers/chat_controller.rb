class ChatController < ApplicationController
  def index
    @chat_props = {
      user: User[session[:user_id]]
    }
  end

  def conversations
    render json: ['HELLO', session[:user_id]]
  end
end
