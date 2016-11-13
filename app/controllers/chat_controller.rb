class ChatController < ApplicationController
  def index
    user = User[session[:user_id]]
    conversations = user.shipped_with.map do |ship|
      target = ship[:user1]
      target = ship[:user2] if target.uid == user.uid
      { user: target }
    end
    @chat_props = {
      user: user,
      conversations: conversations,
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
