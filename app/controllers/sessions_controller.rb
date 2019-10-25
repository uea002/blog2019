class SessionsController < ApplicationController
  def new
  end


  def create
    @user = User.find_by(login: params[:login])
    if @user
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to posts_path
      else
        flash[:notice] = 'Wrong password'
        render :new
      end
    else
      flash[:notice] = 'The user was not found'
      render :new
    end
  end
end
