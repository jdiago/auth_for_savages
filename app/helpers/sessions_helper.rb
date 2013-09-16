module SessionsHelper
  def session_helper
    if session[:user_id]
      link_to 'log out', logout_url, method: :delete
    else
      link_to 'log in', login_url
    end
  end
end
