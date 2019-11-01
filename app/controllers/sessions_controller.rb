class SessionsController < ApplicationController
  def new
  end

<<<<<<< HEAD

=======
>>>>>>> 8fc1cac6981a6555b3593dd3df48144c9e428d5e
  def create
    @user = User.find_by(login: params[:login])
    if @user
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to posts_path
      else
<<<<<<< HEAD
        flash[:notice] = 'Wrong password'
        render :new
      end
    else
      flash[:notice] = 'The user was not found'
=======
        flash[:notice] = 'Неверный пароль'
        render :new
      end
    else
      flash[:notice] = 'Пользователь не найден'
>>>>>>> 8fc1cac6981a6555b3593dd3df48144c9e428d5e
      render :new
    end
  end
end
