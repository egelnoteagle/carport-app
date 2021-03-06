class SessionsController < ApplicationController
  layout "login.html.erb"

  def new
    
  end

  def create

    user = User.find_by(email: params[:email])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Logged In"
      redirect_to "/mygarage"
    else
      flash[:warning] = "Invalid email or password"
      redirect_to '/login'
    end  
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged Out"
    redirect_to '/login'
  end
end
