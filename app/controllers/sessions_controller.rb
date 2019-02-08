class SessionsController < ApplicationController
  def new
  end

  def create	
  	if !params[:name] || params[:name].empty?
  		redirect_to '/sessions/new'
  	else
	  	session[:name] = params[:name]
	  	redirect_to controller: 'application', action: 'hello'
  	end
  end

  def destroy
  	if session[:name]
  	session.delete :name
	else session[:name] = nil
  	end
  	redirect_to root_path
  end
end
