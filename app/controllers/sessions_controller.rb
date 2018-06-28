class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to users_sign_up_path
  end
end
