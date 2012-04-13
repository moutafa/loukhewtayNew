class AuthentificationController < ApplicationController

  def sign_in
    if params[:user]
      @user = User.authenticate(params[:user][:login],params[:user][:mot_de_passe])

      if @user

        session[:user_id] = @user.id
        session[:username] = @user.login

        flash[:notice] = 'Utilisateur connecte'
        redirect_to '/index'

      else
        flash[:notice] = 'Utilisateur inconnu'
      end
    end
  end

  def sign_out
    reset_session
    session[:user_id] = nil
    session[:username] = nil
    #session[:username] = nil
    redirect_to '/'
  end

end
