class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: session_params[:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to homes_new_path, success:'ログインに成功しました'
    else
      flash.now[:denger] = 'ログインに失敗しました'
      render :new
    end
  end
  
  def destroy
    log_out
    redirect_to root_url, info:'ログアウトしました'
  end
  private
    def log_in(user)
      session[:user_id] = user.id
    end
    
    def session_params
      params.require(:session).permit(:email,:password)
    end
    
    def log_out
      session.delete(:user_id)
    end
end
