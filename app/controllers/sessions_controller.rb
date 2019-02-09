class SessionsController < ApplicationController
    def create
        if params[:name].nil?
            redirect_to login_path
        elsif params[:name].empty?
            redirect_to login_path
        else
            session[:name] = params[:name]
            redirect_to root_path
        end
        
    end

    def new
    end

    def destroy
        session.delete :name
        redirect_to login_path
    end
end