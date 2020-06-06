class ApplicationController < ActionController::Base
    
    helper_method :current_user, :logged_in?
    
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
        #x||=y  means x||x = y i.e if x is false set x to val of y
    end

    def logged_in?
        !!current_user
        # !! converts a value to boolean
    end

    def require_user
        if !logged_in?
            flash[:alert] = 'You must be logged in to perform that action.'
            redirect_to login_path
        end
    end
end
