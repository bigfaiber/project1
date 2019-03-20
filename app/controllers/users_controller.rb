class UsersController < ApplicationController
    before_action :authenticate_user!
    protect_from_forgery with: :exception

    def show
        if client_logged_in?
            @client = Cliente.find(params[:id])
            @jobs = @client.jobs.where("start_datetime > ?", DateTime.now)
        end

        @clients = Cliente.where(HRO_id: current_user.id)
        @user = User.find(params[:id])

        if hro_logged_in?
            time_range = Time.now..(Time.now.midnight + 30.day)
            @jobs = Job.joins(:cliente).where(:users => {:HRO_id => current_hro.id}).where(:start_datetime => time_range).order(:start_datetime)
        end
    end
end