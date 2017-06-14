class RegistrationsController < Devise::RegistrationsController
    skip_before_filter :verify_authenticity_token, :only => :create

    def edit
        user = User.find(params[:id])
        @profile = user.profile
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
    end

end
