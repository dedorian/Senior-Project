class RegistrationsController < Devise::RegistrationsController
    skip_before_filter :verify_authenticity_token, :only => :create

    def edit
        user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
    end

end
