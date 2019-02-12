class UsersController < ApplicationController
    before_action :authenticate_user!
    protect_from_forgery with: :exception

    
    def show
        @clients = Cliente.where(HRO_id: current_user.id)
        @user = User.find(params[:id])
    end
end