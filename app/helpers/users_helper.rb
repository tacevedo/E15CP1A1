module UsersHelper
  def logged?
    # session[:user_id].present?true:false
    if session[:user_id]
      true
    else
      false
    end
  end
  def current_user
    if session[:user_id]
        User.find(session[:user_id])

    else
      false
    end
  end

end
