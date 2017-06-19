class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to orders_url, notice: "The user's account was deleted." }
      end
    end
end
