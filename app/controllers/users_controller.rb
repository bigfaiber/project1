class UsersController < ApplicationController
    before_action :authenticate_user!
    protect_from_forgery with: :exception

    def show
        @clients = Cliente.where(HRO_id: current_user.id)
        @user = User.find(params[:id])
        if hro_logged_in?
            @jobs = Job.joins(:cliente).where(:users => {:HRO_id => current_hro.id})[0...5]
        end
    end
end