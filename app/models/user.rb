class User < ApplicationRecord
    has_secure_password

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user_id
            redirect_to :welcome
        else
            redirect_to '/login'
        end
    end

    private 
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
      end
end
