class SessionsController < ApplicationController
  skip_before_action :auth
  layout false

  def create
    
    @user = User.find_by(email: params["email"])
    if @user.present?

      if @user.authenticate(params["password"])
        session["user_id"] = @user.id
        redirect_to root_url
      else
        redirect_to new_session_url, alert: 'No way!!!'
      end
    else

      redirect_to new_session_url, alert: 'No way!!!'
    end

  end

  def destroy
    session["user_id"] = nil
    redirect_to root_url, notice: "Goodbye!"
  end

end

