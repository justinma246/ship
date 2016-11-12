class DockController < ApplicationController
  helper_method :current_user
  def current_user
    User[session[:user_id]] if session[:user_id]
  end
  def index
  	@index_props = { user: current_user }
  	puts "OIASDOIFHAIOSDFHIOASDHOIFHIOASHODIFAS"
  	puts @index_props
  end
end
