class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.create(params[:user_session])
    flash[:notice] = "Has entrado en la aplicacin."
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js {render :layout => false}
    end
  end


  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end
end
