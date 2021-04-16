class UsersController < ApplicationController

    def create
        @userUser.create(user_params)
      end
    
      private
    
      def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
      end
end
