class UsersController < ApplicationController
    before_action :authenticate_user!
    protect_from_forgery with: :exception

    def show
        jobs = params[:jobs] ? Job.where(id: params[:jobs]) : Job.all
        if client_logged_in?
            @client = Cliente.find(params[:id])
            @jobs = jobs.where("start_datetime > ? AND user_id = ?", DateTime.now, params[:id])
        end

        @user = User.find(params[:id])
        if worker_logged_in?
            @jobs = jobs.where("start_datetime > ?", DateTime.now)
        end

        if hro_logged_in?
            @clients = Cliente.where(HRO_id: current_user.id)
            time_range = Time.now..(Time.now.midnight + 30.day)
            @jobs = Job.joins(:cliente).where(:users => {:HRO_id => current_hro.id}).where(:start_datetime => time_range).order(:start_datetime)
        end
    end
end

