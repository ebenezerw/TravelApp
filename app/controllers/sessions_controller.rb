class SessionsController < ApplicationController


  # def create
  #     render text: request.env['omniauth.auth'].to_yaml
  #   end

  def create
    auth = request.env["omniauth.auth"]
    session[:omniauth] = auth
    user = User.sign_in_from_omniauth(auth)
    session[:user_id] = user.id
    redirect_to destinations_path
  end

  def destroy
     session[:user_id] = user.id
    session[:user_id] = nil
    session[:omniauth] =nil
    redirect_to destinations_path

  end





protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
